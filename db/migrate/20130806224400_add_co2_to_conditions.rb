class AddCo2ToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :CO2, :integer
  end
end
