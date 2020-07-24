require 'test_helper'

class AssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_url
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post assignments_url, params: { assignment: { assignment_name: @assignment.assignment_name, commencement_date: @assignment.commencement_date, completion_date: @assignment.completion_date, cost_of_project: @assignment.cost_of_project, owner_sponsoring_agency: @assignment.owner_sponsoring_agency, project_name: @assignment.project_name, satisfactorily_completed: @assignment.satisfactorily_completed, si_no: @assignment.si_no } }
    end

    assert_redirected_to assignment_url(Assignment.last)
  end

  test "should show assignment" do
    get assignment_url(@assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_url(@assignment)
    assert_response :success
  end

  test "should update assignment" do
    patch assignment_url(@assignment), params: { assignment: { assignment_name: @assignment.assignment_name, commencement_date: @assignment.commencement_date, completion_date: @assignment.completion_date, cost_of_project: @assignment.cost_of_project, owner_sponsoring_agency: @assignment.owner_sponsoring_agency, project_name: @assignment.project_name, satisfactorily_completed: @assignment.satisfactorily_completed, si_no: @assignment.si_no } }
    assert_redirected_to assignment_url(@assignment)
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete assignment_url(@assignment)
    end

    assert_redirected_to assignments_url
  end
end
