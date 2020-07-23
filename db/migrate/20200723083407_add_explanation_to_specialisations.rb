class AddExplanationToSpecialisations < ActiveRecord::Migration[5.2]
  def change
    add_column :specialisations, :explanation, :text
  end
end
