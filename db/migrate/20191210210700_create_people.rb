class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :persons do |t|
      t.string :title, null: true
      t.string :first_name, null: false
      t.string :last_name, null: false 
      t.date :dob, null: true
      t.integer :id_passport_number, null: false
      t.string :citizenship, null: false
      t.string :permit_type, null: true
      t.string :permit_number, null: true
      t.date :permit_expiry_date, null: true
      t.string :residential_address, null: true
      t.references :sector, foreign_key: true, null: true
    
      t.timestamps
    end
    
    add_index :persons, :id_passport_number, unique: true, name: 'unique_citizen_passport_id'
  end
end
