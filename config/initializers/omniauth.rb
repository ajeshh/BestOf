Rails.application.config.middleware.use OmniAuth::Builder do
  provider :foursquare, ENV['consumer_key'], ENV['consumer_secret']

end