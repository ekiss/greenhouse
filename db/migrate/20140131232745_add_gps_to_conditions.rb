class AddGpsToConditions < ActiveRecord::Migration
  def change
  	add_column :conditions, :GPS, :string
  end
end
