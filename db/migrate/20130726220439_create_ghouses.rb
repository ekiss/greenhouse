class CreateGhouses < ActiveRecord::Migration
  def change
    create_table :ghouses do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
