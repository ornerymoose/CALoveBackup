class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products
  
  def add_product(product_id, size, color, quantity)
 		current_item = line_items.build(product_id: product_id, size: size, color: color, quantity: quantity)
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

  def total_quantity
    line_items.to_a.sum { |item| item.quantity }
  end

  def paypal_url(return_url)
    values = {
      # get it form your http://sandbox.paypal.com account
      :business => 'lvp707@gmail.com',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url
    }
    # These values set up the details for the item on paypal.
    line_items.each_with_index do |item, index|
       values.merge!({
        "amount_#{index+1}" => item.ind_price,
        "item_name_#{index+1}" => "#{item.size} #{item.color} #{item.product.name}",
        "item_number_#{index+1}" => item.filler,
        "quantity_#{index+1}" => item.quantity
      })
    end
    "https://www.paypal.com/cgi-bin/webscr?" + values.to_query
  end

end




          