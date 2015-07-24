# Time.zone = "UTC"

activate :directory_indexes
activate :imageoptim
activate :sitemap, hostname: "http://reidbeels.com"

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host   = 'reidbeels.com'
  deploy.user   = 'reidab'
  deploy.path   = 'sites/reidbeels.com'
end

sprockets.append_path File.join root, 'bower_components'
sprockets.import_asset 'picturefill'
sprockets.import_asset 'jquery'
sprockets.import_asset 'slabText/js/jquery.slabtext.js'
sprockets.import_asset 'slabText/css/slabtext.css'

# Work

with_layout :portfolio_layout do
  page "/work/*"
end
page "/work/index.html", layout: :layout

# Posts

activate :blog do |blog|
  blog.prefix = "posts"
  blog.layout = "post_layout"
  blog.permalink = "{year}/{month}/{day}/{title}.html"
  blog.sources = "{year}-{month}-{day}-{title}.html"
  blog.default_extension = ".md"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250

  blog.tag_template = "posts/tag.html"
  blog.calendar_template = "posts/calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false


# Photos

# data.photo_sets.values.flatten.each do |set|
#   proxy "/photos/#{set[:slug]}/index.html", "/photos/set.html", locals: { photo_set: set }, ignore: true
#
#   data.flickr_photo_sets[set[:id]][:photos].each do |photo|
#     proxy "/photos/#{set[:slug]}/#{photo[:id]}.html", "/photos/photo.html", locals: { photo: photo }, ignore: true
#   end
# end

helpers do
  def all_photos
    data.flickr_photo_sets.map{|id, ps| ps[:photos] }.flatten.uniq
  end

  def find_photo(id)
    all_photos.find{|p| p[:id] == id.to_s }
  end

  def find_photoset_containing(id)
    flickr_set_id, flickr_set = data.flickr_photo_sets.find{|set_id, ps| ps[:photos].find{|p| p[:id] == id.to_s } }
    data.photo_sets.values.flatten.find{|ps| ps[:id] == flickr_set_id }
  end

  def photo_path(id)
    ps = find_photoset_containing(id)
    "/photos/#{ps[:slug]}/#{id}"
  end

  def sub_pages(dir)
    sitemap.resources.select do |resource|
      resource.path.start_with?(dir)
    end
  end

  def srcset_image_tag(img_path_template, options = {})
    image_widths = options.delete(:srcset_widths) || []
    default_width = options.delete(:default_width) || image_widths.first
    raise ArgumentError, "could not determine default image width" unless default_width

    image_sizes = Hash[image_widths.map{|w| [w, img_path_template.sub("[size]", w.to_s)] }]

    default_image_path = image_sizes[default_width]
    options[:srcset] ||= image_sizes.map{|width, path| "#{path} #{width}w" }.join(", ")

    image_tag(default_image_path, options)
  end
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
