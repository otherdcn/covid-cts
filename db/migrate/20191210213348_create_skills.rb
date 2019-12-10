class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.references :skill_type, foreign_key: true, null: false
      t.integer :rating, null: false
      t.references :person, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
