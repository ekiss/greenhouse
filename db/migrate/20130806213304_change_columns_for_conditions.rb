class ChangeColumnsForConditions < ActiveRecord::Migration
  def change
  	change_table :conditions do |t|  
        t.change :air_temperature, :float
        t.change :res_temperature, :float 
        t.change :PH, :float 
        t.change :EC, :float 
        t.change :humidity, :float 
    end
  end
end
