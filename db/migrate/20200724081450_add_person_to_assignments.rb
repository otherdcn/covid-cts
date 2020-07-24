class AddPersonToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_reference :assignments, :person, foreign_key: true, null: false
  end
end
