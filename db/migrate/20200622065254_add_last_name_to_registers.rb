class AddLastNameToRegisters < ActiveRecord::Migration[5.2]
  def change
    add_column :registers, :last_name, :string
  end
end
