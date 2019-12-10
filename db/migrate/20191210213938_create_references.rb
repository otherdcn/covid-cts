class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.integer :mobile, null: true
      t.integer :telephone, null: true
      t.string :employer, null: false
      t.references :person, foreign_key: true, null: false

      t.timestamps
    end
  end
end
