require "application_system_test_case"

class LanguageProficienciesTest < ApplicationSystemTestCase
  setup do
    @language_proficiency = language_proficiencies(:one)
  end

  test "visiting the index" do
    visit language_proficiencies_url
    assert_selector "h1", text: "Language Proficiencies"
  end

  test "creating a Language proficiency" do
    visit language_proficiencies_url
    click_on "New Language Proficiency"

    click_on "Create Language proficiency"

    assert_text "Language proficiency was successfully created"
    click_on "Back"
  end

  test "updating a Language proficiency" do
    visit language_proficiencies_url
    click_on "Edit", match: :first

    click_on "Update Language proficiency"

    assert_text "Language proficiency was successfully updated"
    click_on "Back"
  end

  test "destroying a Language proficiency" do
    visit language_proficiencies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language proficiency was successfully destroyed"
  end
end
