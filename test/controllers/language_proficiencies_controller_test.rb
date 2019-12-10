require 'test_helper'

class LanguageProficienciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_proficiency = language_proficiencies(:one)
  end

  test "should get index" do
    get language_proficiencies_url
    assert_response :success
  end

  test "should get new" do
    get new_language_proficiency_url
    assert_response :success
  end

  test "should create language_proficiency" do
    assert_difference('LanguageProficiency.count') do
      post language_proficiencies_url, params: { language_proficiency: {  } }
    end

    assert_redirected_to language_proficiency_url(LanguageProficiency.last)
  end

  test "should show language_proficiency" do
    get language_proficiency_url(@language_proficiency)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_proficiency_url(@language_proficiency)
    assert_response :success
  end

  test "should update language_proficiency" do
    patch language_proficiency_url(@language_proficiency), params: { language_proficiency: {  } }
    assert_redirected_to language_proficiency_url(@language_proficiency)
  end

  test "should destroy language_proficiency" do
    assert_difference('LanguageProficiency.count', -1) do
      delete language_proficiency_url(@language_proficiency)
    end

    assert_redirected_to language_proficiencies_url
  end
end
