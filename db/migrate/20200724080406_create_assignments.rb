class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :si_no
      t.string :assignment_name
      t.string :project_name
      t.string :owner_sponsoring_agency
      t.float :cost_of_project
      t.date :commencement_date
      t.date :completion_date
      t.string :satisfactorily_completed

      t.timestamps
    end
  end
end
