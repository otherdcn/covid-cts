class RenameSkillTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :skill_types, :type, :type_name
  end
end
