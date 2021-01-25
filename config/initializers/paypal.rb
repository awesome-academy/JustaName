#config/initializers/paypal.rb
# require 'paypal/express'
# PAYPAL_CONFIG = YAML::load(ERB.new(File.read("#{Rails.root}/config/paypal.yml")).result)[Rails.env].symbolize_keys
# Paypal.sandbox! if PAYPAL_CONFIG[:sandbox]


PayPal::SDK.configure(
  mode: ENV['PAYPAL_ENV'],
  client_id: ENV['PAYPAL_CLIENT_ID'],
  client_secret: ENV['PAYPAL_CLIENT_SECRET'],
)
PayPal::SDK.logger.level = Logger::INFO




