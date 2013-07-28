class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :air_temperature
      t.integer :res_temperature
      t.integer :PH
      t.integer :EC
      t.integer :humidity
      t.integer :ghouse_id

      t.timestamps
    end
    add_index :conditions, [:ghouse_id, :created_at]
  end
end
