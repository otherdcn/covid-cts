require 'test_helper'

class SpecialisationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialisation = specialisations(:one)
  end

  test "should get index" do
    get specialisations_url
    assert_response :success
  end

  test "should get new" do
    get new_specialisation_url
    assert_response :success
  end

  test "should create specialisation" do
    assert_difference('Specialisation.count') do
      post specialisations_url, params: { specialisation: {  } }
    end

    assert_redirected_to specialisation_url(Specialisation.last)
  end

  test "should show specialisation" do
    get specialisation_url(@specialisation)
    assert_response :success
  end

  test "should get edit" do
    get edit_specialisation_url(@specialisation)
    assert_response :success
  end

  test "should update specialisation" do
    patch specialisation_url(@specialisation), params: { specialisation: {  } }
    assert_redirected_to specialisation_url(@specialisation)
  end

  test "should destroy specialisation" do
    assert_difference('Specialisation.count', -1) do
      delete specialisation_url(@specialisation)
    end

    assert_redirected_to specialisations_url
  end
end
