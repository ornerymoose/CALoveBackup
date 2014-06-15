class ChargesController < ApplicationController
  after_filter :destroy_cart, :only => [:show]

  def new
    @cart = Cart.find(params[:id])

    respond_to do |format|
      format.js {}
    end
  end

  def create

  begin
    email = params.delete(:stripeEmail)
    @customer = Customer.new(email: email)
    @cart = Cart.find(params[:id])
    @current_cart = current_cart

    stripe_customer = Stripe::Customer.create(
      :email => email,
      :card => params[:stripeToken]
    )

    @customer.stripe_customer_id = stripe_customer.id
    @customer.save!

    charge = Stripe::Charge.create(
      :customer    => stripe_customer.id,
      :amount      => @cart.total_price * 100,
      :description => 'California Love Customer',
      :currency    => 'usd'
    )  

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end

    respond_to do |format|
      CustomerMailer.received(@cart, @customer.email).deliver
      format.html { redirect_to charge_path(@cart, {customer_id: @customer.id}) }
      format.json { head :ok }
    end

  end

  def show
    @cart = current_cart
    @customer_id = Customer.find(params[:customer_id])
  end

  private

  def destroy_cart
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
  end
end

