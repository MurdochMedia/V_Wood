class AddSkillsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :skills, :text
  end
end
