class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.string :qual_obtained, null: false
      t.string :institution, null: false
      t.text :courses_passed, null: true
      t.text :major_subjects, null: true
      t.integer :nqf_level, null: true
      t.date :date_from, null: true
      t.date :date_to, null: true
      t.references :person, foreign_key: true, null: false

      t.timestamps
    end
  end
end
