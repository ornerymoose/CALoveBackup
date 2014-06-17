class NotificationsMailer < ActionMailer::Base

  default :to => "help@calove.ca"

  def new_message(message)
    @message = message
    mail(from: message.email, subject: "CA Love Contact Form: #{message.subject}")
  end

end