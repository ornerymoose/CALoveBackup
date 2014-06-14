ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => ENV['ACTION_MAILER_NAME'],
  :password             => ENV["ACTION_MAILER_PASSWORD"],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
           
ActionMailer::Base.default_url_options[:host] = ENV['ACTION_MAILER_HOST']
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?



