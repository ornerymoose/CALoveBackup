class PagesController < ApplicationController
  def about
  	@cart = current_cart
  end

  def contact
  	@cart = current_cart
    @message = Message.new
  end

  def customer_service
  	@cart = current_cart
  end

  def subscribe
  	@cart = current_cart
  end

  def create
    @cart = current_cart
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path)
    else
      flash[:error] = "Please fill in the required fields appropriately."
      render :contact
    end

  end
  
end
