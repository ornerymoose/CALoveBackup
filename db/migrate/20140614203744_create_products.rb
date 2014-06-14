class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.integer :price
      t.string :size
      t.string :quantity

      t.timestamps
    end
  end
end
