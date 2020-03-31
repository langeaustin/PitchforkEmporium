class ChangePriceToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal
    change_column :products, :description, :text
  end
end
