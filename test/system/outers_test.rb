require "application_system_test_case"

class OutersTest < ApplicationSystemTestCase
  setup do
    @outer = outers(:one)
  end

  test "visiting the index" do
    visit outers_url
    assert_selector "h1", text: "Outers"
  end

  test "creating a Outer" do
    visit outers_url
    click_on "New Outer"

    fill_in "Name", with: @outer.name
    fill_in "User", with: @outer.user_id
    click_on "Create Outer"

    assert_text "Outer was successfully created"
    click_on "Back"
  end

  test "updating a Outer" do
    visit outers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @outer.name
    fill_in "User", with: @outer.user_id
    click_on "Update Outer"

    assert_text "Outer was successfully updated"
    click_on "Back"
  end

  test "destroying a Outer" do
    visit outers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outer was successfully destroyed"
  end
end
