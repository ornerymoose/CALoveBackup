class PagesController < ApplicationController
  def about
  	@cart = current_cart
  end

  def contact
  	@cart = current_cart
  end

  def customer_service
  	@cart = current_cart
  end

  def subscribe
  	@cart = current_cart
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path)
    else
      flash[:error] = "Please fill in the required fields appropriately."
      redirect_to contact_path
    end
  end
  
end
