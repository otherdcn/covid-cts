class AddCanDevelopMaterialToSpecialisations < ActiveRecord::Migration[5.2]
  def change
    add_column :specialisations, :can_develop_material, :string
  end
end
