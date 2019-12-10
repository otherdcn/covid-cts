class RenamePersonTable < ActiveRecord::Migration[5.2]
  def change
    change_table :persons do |t|
      rename_table :persons, :people
    end
  end
end
