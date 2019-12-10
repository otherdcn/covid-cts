class CreateEmploymentHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :employment_histories do |t|
      t.string :employer, null: false
      t.string :position_held, null: false
      t.text :key_performance_areas, null: true
      t.date :date_from, null: true
      t.date :date_to, null: true
      t.references :person, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
