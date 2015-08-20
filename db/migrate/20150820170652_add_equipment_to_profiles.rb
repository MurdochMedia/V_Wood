class AddEquipmentToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :equipment, :text
  end
end
