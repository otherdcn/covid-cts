require "application_system_test_case"

class EmploymentHistoriesTest < ApplicationSystemTestCase
  setup do
    @employment_history = employment_histories(:one)
  end

  test "visiting the index" do
    visit employment_histories_url
    assert_selector "h1", text: "Employment Histories"
  end

  test "creating a Employment history" do
    visit employment_histories_url
    click_on "New Employment History"

    click_on "Create Employment history"

    assert_text "Employment history was successfully created"
    click_on "Back"
  end

  test "updating a Employment history" do
    visit employment_histories_url
    click_on "Edit", match: :first

    click_on "Update Employment history"

    assert_text "Employment history was successfully updated"
    click_on "Back"
  end

  test "destroying a Employment history" do
    visit employment_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employment history was successfully destroyed"
  end
end
