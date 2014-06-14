class LineItemsController < InheritedResources::Base
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    size = params[:product][:size]
    color = params[:product][:color]
    quantity = params[:product][:quantity]
    @line_item = @cart.add_product(product.id, size, color, quantity)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to products_customer_cart_url,
          notice: 'You have added an item to your cart.' }
        #format.js { @current_item = @line_item }
        format.json { render json: @line_item,
          status: :created, location: @line_item }
      else
        format.html { render action: "new" }
        format.json { render json: @line_item.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cart = current_cart

    @line_item = LineItem.find(params[:id])
    @line_item.destroy
  
    respond_to do |format|
      format.js {}
    end
  end

end
