class CustomerMailer < ActionMailer::Base
  default from: ENV['ACTION_MAILER_NAME']

  def received(order, info, email)
  	@cart = order
  	@charge = info
  	@customer = email
    mail(to: email, subject: "Thank you for shopping with CALove")
  end

  def sent(order, info, email)
  	@cart = order
  	@charge = info
    mail(to: email, subject: "Someone just bought CALove gear!")
  end
end

