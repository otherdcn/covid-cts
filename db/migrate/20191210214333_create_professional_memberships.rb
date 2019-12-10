class CreateProfessionalMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_memberships do |t|
      t.string :body_name, null: false
      t.integer :registration_number, null: true
      t.references :person, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
