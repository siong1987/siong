###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

# Amazon S3 configuration
activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = 'siong.com' # The name of the S3 bucket you are targeting. This is globally unique.
  s3_sync.region                     = 'us-west-1' # The AWS region for your bucket.
  s3_sync.index_document             = 'index.html'
end

# Amazon CloudFront invalidation
activate :cloudfront do |cf|
  cf.access_key_id     = ENV['AWS_ACCESS_KEY']
  cf.secret_access_key = ENV['AWS_SECRET']
  cf.distribution_id   = ENV['AWS_DISTRIBUTION_ID']
end
