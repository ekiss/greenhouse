class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.float :air_temperature
      t.float :res_temperature
      t.float :PH
      t.string :EC
      t.float :humidity
      t.integer :ghouse_id

      t.timestamps
    end
    add_index :conditions, [:ghouse_id, :created_at]
  end
end
