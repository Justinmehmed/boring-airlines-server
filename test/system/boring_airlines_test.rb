require "application_system_test_case"

class BoringAirlinesTest < ApplicationSystemTestCase
  setup do
    @boring_airline = boring_airlines(:one)
  end

  test "visiting the index" do
    visit boring_airlines_url
    assert_selector "h1", text: "Boring Airlines"
  end

  test "creating a Boring airline" do
    visit boring_airlines_url
    click_on "New Boring Airline"

    fill_in "Content", with: @boring_airline.Content
    click_on "Create Boring airline"

    assert_text "Boring airline was successfully created"
    click_on "Back"
  end

  test "updating a Boring airline" do
    visit boring_airlines_url
    click_on "Edit", match: :first

    fill_in "Content", with: @boring_airline.Content
    click_on "Update Boring airline"

    assert_text "Boring airline was successfully updated"
    click_on "Back"
  end

  test "destroying a Boring airline" do
    visit boring_airlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boring airline was successfully destroyed"
  end
end
