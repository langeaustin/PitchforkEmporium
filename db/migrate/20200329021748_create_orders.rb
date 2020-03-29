class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.float :order_tax
      t.int :order_total

      t.timestamps
    end
  end
end
