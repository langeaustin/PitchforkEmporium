class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.decimal :order_tax
      t.decimal :order_total

      t.timestamps
    end
  end
end
