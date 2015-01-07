activate :livereload
activate :relative_assets
activate :directory_indexes

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 10']
  config.cascade = false
end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

set :codeschool_url, 'http://www.codeschool.com'
set :envy_url, 'http://madewithenvy.com'
set :flickr_url, 'http://www.flickr.com/groups/designorlando'
set :meetup_url, 'http://www.meetup.com/Design-Orlando'
set :twitter_url, 'http://twitter.com/designorlandofl'

helpers do
  def get_meetup_link(id)
    "#{ meetup_url }/events/#{ id }"
  end
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end
