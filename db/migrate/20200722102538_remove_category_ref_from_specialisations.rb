class RemoveCategoryRefFromSpecialisations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :specialisations, :category, index: true, foreign_key: true
  end
end
