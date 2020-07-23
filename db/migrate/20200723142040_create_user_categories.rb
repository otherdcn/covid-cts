class CreateUserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      t.references :person, foreign_key: true, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
