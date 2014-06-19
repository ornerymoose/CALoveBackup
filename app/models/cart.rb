class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products
  
  def add_product(product_id, size, color, quantity)
    current_item = line_items.build(product_id: product_id, size: size, color: color, quantity: quantity)
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

end
