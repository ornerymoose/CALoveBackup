class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.string :color
      t.string :size
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
