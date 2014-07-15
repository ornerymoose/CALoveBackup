class NotificationsMailer < ActionMailer::Base

  def new_message(message)
    @message = message
    mail(from: "#{@message.email}", to: ENV['ACTION_MAILER_TY'], subject: "CA Love Contact Form: #{message.subject}")
  end

end