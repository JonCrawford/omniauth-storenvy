Rails.application.config.middleware.use OmniAuth::Builder do
  provider :storenvy, ENV['STORENVY_KEY'], ENV['STORENVY_SECRET'] #, :scope => 'store_write user store_read'
end