class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def ind_price
    product.price
  end

  def prod_color
    product.color
  end

end
