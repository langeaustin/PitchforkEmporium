class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.decimal :order_tax
      t.integer :order_total

      t.timestamps
    end
  end
end
