class CreateCatagories < ActiveRecord::Migration[6.0]
  def change
    create_table :catagories do |t|
      t.string :type

      t.timestamps
    end
  end
end
