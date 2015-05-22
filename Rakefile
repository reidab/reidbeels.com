require 'dotenv/tasks'
require 'yaml'
require 'flickraw'
require 'ruby-progressbar'

task :update_flickr_info => :dotenv do
  FlickRaw.api_key = ENV['FLICKR_API_KEY']
  FlickRaw.shared_secret = ENV['FLICKR_SHARED_SECRET']

  photo_set_data_path = File.expand_path('../data/photo_sets.yml', __FILE__)
  flickr_data_path    = File.expand_path('../data/flickr_photo_sets.yml', __FILE__)

  photo_set_data = YAML.load_file(photo_set_data_path)
  photo_sets = photo_set_data.values.flatten

  flickr_data = YAML.load_file(flickr_data_path) rescue {}

  progress = ProgressBar.create(title: "Updating flickr data", total: photo_sets.size * 2)

  photo_sets.each do |set|
    progress.log set["title"]
    info   = flickr.photosets.getInfo(photoset_id: set["id"])
    progress.increment

    if flickr_data[set["id"]] && flickr_data[set["id"]]["date_update"] == info["date_update"]
      progress.increment
      next
    end

    photos = flickr.photosets.getPhotos(
      photoset_id: set["id"],
      extras: %w{
        license date_taken geo tags machine_tags
        views media url_sq url_t url_m url_n url_z url_c url_k url_o
      }.join(',')
    )
    progress.increment

    flickr_data[set["id"]] = {
      "primary" => info["primary"],
      "title" => info["title"],
      "description" => info["description"],
      "date_update" => info["date_update"],
      "photos" => photos.photo.map(&:to_hash)
    }
  end

  File.open(flickr_data_path, 'w') do |file|
    file.write(YAML.dump(flickr_data))
  end
end
