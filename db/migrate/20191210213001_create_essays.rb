class CreateEssays < ActiveRecord::Migration[5.2]
  def change
    create_table :essays do |t|
      t.text :understanding_nipam_role, null: true
      t.text :candidate_suitability, null: true
      t.references :person, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
