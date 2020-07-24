require "application_system_test_case"

class AssignmentsTest < ApplicationSystemTestCase
  setup do
    @assignment = assignments(:one)
  end

  test "visiting the index" do
    visit assignments_url
    assert_selector "h1", text: "Assignments"
  end

  test "creating a Assignment" do
    visit assignments_url
    click_on "New Assignment"

    fill_in "Assignment name", with: @assignment.assignment_name
    fill_in "Commencement date", with: @assignment.commencement_date
    fill_in "Completion date", with: @assignment.completion_date
    fill_in "Cost of project", with: @assignment.cost_of_project
    fill_in "Owner sponsoring agency", with: @assignment.owner_sponsoring_agency
    fill_in "Project name", with: @assignment.project_name
    fill_in "Satisfactorily completed", with: @assignment.satisfactorily_completed
    fill_in "Si no", with: @assignment.si_no
    click_on "Create Assignment"

    assert_text "Assignment was successfully created"
    click_on "Back"
  end

  test "updating a Assignment" do
    visit assignments_url
    click_on "Edit", match: :first

    fill_in "Assignment name", with: @assignment.assignment_name
    fill_in "Commencement date", with: @assignment.commencement_date
    fill_in "Completion date", with: @assignment.completion_date
    fill_in "Cost of project", with: @assignment.cost_of_project
    fill_in "Owner sponsoring agency", with: @assignment.owner_sponsoring_agency
    fill_in "Project name", with: @assignment.project_name
    fill_in "Satisfactorily completed", with: @assignment.satisfactorily_completed
    fill_in "Si no", with: @assignment.si_no
    click_on "Update Assignment"

    assert_text "Assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignment" do
    visit assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignment was successfully destroyed"
  end
end
