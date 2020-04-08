class ChangeCatagoriesName < ActiveRecord::Migration[6.0]
  def change
    rename_table :catagories_tables, :categories
  end
end
