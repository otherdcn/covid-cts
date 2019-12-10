class CreateSkillTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_types do |t|
      t.string :type, null: false
      
      t.timestamps
    end
  end
end
