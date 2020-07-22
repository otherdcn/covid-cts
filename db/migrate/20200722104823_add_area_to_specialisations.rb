class AddAreaToSpecialisations < ActiveRecord::Migration[5.2]
  def change
    add_column :specialisations, :area, :string
  end
end
