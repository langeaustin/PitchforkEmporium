class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :province
      t.string :address
      t.integer :order_id
      t.integer :user_id

      t.timestamps
    end
  end
end
