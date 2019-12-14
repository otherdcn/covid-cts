class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    enable_extension :citext
    create_table :users do |t|
      t.citext :email
      t.string :password_digest
      t.string :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
