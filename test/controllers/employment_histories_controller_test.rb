require 'test_helper'

class EmploymentHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment_history = employment_histories(:one)
  end

  test "should get index" do
    get employment_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_history_url
    assert_response :success
  end

  test "should create employment_history" do
    assert_difference('EmploymentHistory.count') do
      post employment_histories_url, params: { employment_history: {  } }
    end

    assert_redirected_to employment_history_url(EmploymentHistory.last)
  end

  test "should show employment_history" do
    get employment_history_url(@employment_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_history_url(@employment_history)
    assert_response :success
  end

  test "should update employment_history" do
    patch employment_history_url(@employment_history), params: { employment_history: {  } }
    assert_redirected_to employment_history_url(@employment_history)
  end

  test "should destroy employment_history" do
    assert_difference('EmploymentHistory.count', -1) do
      delete employment_history_url(@employment_history)
    end

    assert_redirected_to employment_histories_url
  end
end
