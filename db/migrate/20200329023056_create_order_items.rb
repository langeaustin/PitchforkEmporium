class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :quantity
      t.string :item_name
      t.integer :item_price

      t.timestamps
    end
  end
end
