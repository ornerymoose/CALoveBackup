# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['ACTION_MAILER_NAME_SENDGRID'],
  :password => ENV['ACTION_MAILER_PASSWORD_SENDGRID'],
  :domain => ENV['ACTION_MAILER_DOMAIN_SENDGRID'],
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
           
ActionMailer::Base.default_url_options[:host] = ENV['ACTION_MAILER_HOST']
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?




