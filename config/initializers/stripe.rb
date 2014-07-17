Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_LIVE'],
  :secret_key      => ENV['SECRET_LIVE']
}
 
# Rails.configuration.stripe = {
#   :publishable_key => ENV['PUBLISHABLE_TEST'],
#   :secret_key      => ENV['SECRET_TEST']
# }


Stripe.api_key = Rails.configuration.stripe[:secret_key]
