require 'unsplash'

Unsplash.configure do |config|
  config.application_access_key = ENV['UNSPLASH_ACCESS_KEY']
  # Optionally set other configuration parameters if needed
end
