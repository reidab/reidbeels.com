require 'dotenv/tasks'
require 'yaml'
require 'flickraw'
require 'ruby-progressbar'
require 'fileutils'

task :resize_images do
  root_path = File.expand_path('..', __FILE__)
  portfolio_images_path = File.join(root_path, 'portfolio_images')

  %w(list detail).each do |type|
    Dir.foreach( File.join(portfolio_images_path, type) ) do |file|
      image_path = File.join(portfolio_images_path, type, file)
      extension  = File.extname(file)
      base_name  = File.basename(file, extension)
      target_dir = File.join(root_path, 'source', 'images', 'work')
      FileUtils.mkdir_p(target_dir)

      next if extension.empty?

      size_check = `sips --getProperty pixelWidth #{image_path}`
      size_match = size_check.match(/pixelWidth: (\d+)/)
      orig_size  = size_match.captures.first.to_i

      puts "#{image_path} (#{orig_size}px)"

      [orig_size, orig_size/2, orig_size/4].each do |size|
        target_path = File.join(target_dir, "#{type}-#{base_name}-#{size}#{extension}")

        if File.exist?(target_path)
          puts "(#{size})→ exists: #{target_path}"
        else
          if size == orig_size
            FileUtils.cp(image_path, target_path)
          else
            `sips -Z #{size} #{image_path} --out #{target_path}`
          end

          puts "(#{size})→ #{target_path}"
        end
      end
    end
  end
end

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
