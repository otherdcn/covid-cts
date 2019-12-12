class ChangePersonColumnType1 < ActiveRecord::Migration[5.2]
  def change
    change_column :people, :id_passport_number, :string
  end
end
