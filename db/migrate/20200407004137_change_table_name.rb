class ChangeTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :catagories, :categories
  end
end
