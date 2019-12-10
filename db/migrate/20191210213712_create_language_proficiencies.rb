class CreateLanguageProficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :language_proficiencies do |t|
      t.string :language, null: false
      t.integer :read, null: false
      t.integer :write, null: false
      t.integer :speak, null: false
      t.references :person, foreign_key: true, null: false

      t.timestamps
    end
  end
end
