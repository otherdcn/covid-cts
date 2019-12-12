class MakeCaseInsensitive < ActiveRecord::Migration[5.2]
  def change
    add_index :categories, :category, unique: true, name: 'unique_category'
    add_index :fields, :field, unique: true, name: 'unique_field'
    add_index :skill_types, :type_name, unique: true, name: 'unique_type'
    add_index :contacts, :person_id, unique: true, name: 'one_contacts_for_one_person'
    add_index :essays, :person_id, unique: true, name: 'one_essay_for_one_person'

    enable_extension :citext
    change_column :people, :permit_number, :citext
    change_column :categories, :category, :citext
    change_column :fields, :field, :citext
    change_column :skill_types, :type_name, :citext
  end
end
