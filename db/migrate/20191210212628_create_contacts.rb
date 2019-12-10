class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :postal_address, null: true
      t.integer :work_telephone, null: true
      t.integer :home_telephone, null: true
      t.integer :fax, null: true
      t.integer :mobile, null: true
      t.string :email, null: true
      t.references :person, foreign_key: true, null: false
    
      t.timestamps
    end
  end
end
