class OrdersController < ApplicationController
  after_filter :destroy_cart, :only => [:show]

  def show 
    @cart = current_cart
  end

  private

  def destroy_cart
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
  end
end
