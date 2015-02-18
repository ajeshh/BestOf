OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  puts ENV['consumer_key']
  puts ENV['consumer_secret']
  provider :foursquare, ENV['consumer_key'], ENV['consumer_secret']

end