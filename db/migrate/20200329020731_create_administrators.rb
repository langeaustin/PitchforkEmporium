class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :admin_name
      t.string :admin_pass

      t.timestamps
    end
  end
end
