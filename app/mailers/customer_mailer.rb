class CustomerMailer < ActionMailer::Base
  default from: ENV['ACTION_MAILER_NAME']

  def received(order, email)
  	@cart = order
  	@customer = email
    mail(to: email, subject: "Thank you for shopping with California Love")
  end
end

