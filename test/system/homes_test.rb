require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  setup do
    @home = homes(:one)
  end

  test "visiting the index" do
    visit homes_url
    assert_selector "h1", text: "Homes"
  end

  test "creating a Home" do
    visit homes_url
    click_on "New Home"

    fill_in "Category", with: @home.category
    fill_in "Colour", with: @home.colour
    fill_in "Depth", with: @home.depth
    fill_in "Description", with: @home.description
    fill_in "Height", with: @home.height
    fill_in "Name", with: @home.name
    fill_in "Outer", with: @home.outer_id
    fill_in "Price", with: @home.price
    fill_in "Weight", with: @home.weight
    fill_in "Width", with: @home.width
    click_on "Create Home"

    assert_text "Home was successfully created"
    click_on "Back"
  end

  test "updating a Home" do
    visit homes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @home.category
    fill_in "Colour", with: @home.colour
    fill_in "Depth", with: @home.depth
    fill_in "Description", with: @home.description
    fill_in "Height", with: @home.height
    fill_in "Name", with: @home.name
    fill_in "Outer", with: @home.outer_id
    fill_in "Price", with: @home.price
    fill_in "Weight", with: @home.weight
    fill_in "Width", with: @home.width
    click_on "Update Home"

    assert_text "Home was successfully updated"
    click_on "Back"
  end

  test "destroying a Home" do
    visit homes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home was successfully destroyed"
  end
end
