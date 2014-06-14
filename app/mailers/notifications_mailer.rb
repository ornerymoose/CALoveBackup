class NotificationsMailer < ActionMailer::Base

  default :to => "calove.help@gmail.com"

  def new_message(message)
    @message = message
    mail(from: message.email, subject: "CA Love Contact Form: #{message.subject}")
  end

end