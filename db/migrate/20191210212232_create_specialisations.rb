class CreateSpecialisations < ActiveRecord::Migration[5.2]
  def change
    create_table :specialisations do |t|
      t.references :field, foreign_key: true, null: false
      t.string :level, null: false
      t.string :station_duty, null: false
      t.references :category, foreign_key: true, null: true
      t.references :person, foreign_key: true, null: false

      t.timestamps
    end
  end
end
