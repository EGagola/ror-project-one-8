require "application_system_test_case"

class CLothingsTest < ApplicationSystemTestCase
  setup do
    @c_lothing = c_lothings(:one)
  end

  test "visiting the index" do
    visit c_lothings_url
    assert_selector "h1", text: "C Lothings"
  end

  test "creating a C lothing" do
    visit c_lothings_url
    click_on "New C Lothing"

    fill_in "Category", with: @c_lothing.category
    fill_in "Colour", with: @c_lothing.colour
    fill_in "Description", with: @c_lothing.description
    fill_in "Name", with: @c_lothing.name
    fill_in "Outer", with: @c_lothing.outer_id
    fill_in "Price", with: @c_lothing.price
    fill_in "Size", with: @c_lothing.size
    click_on "Create C lothing"

    assert_text "C lothing was successfully created"
    click_on "Back"
  end

  test "updating a C lothing" do
    visit c_lothings_url
    click_on "Edit", match: :first

    fill_in "Category", with: @c_lothing.category
    fill_in "Colour", with: @c_lothing.colour
    fill_in "Description", with: @c_lothing.description
    fill_in "Name", with: @c_lothing.name
    fill_in "Outer", with: @c_lothing.outer_id
    fill_in "Price", with: @c_lothing.price
    fill_in "Size", with: @c_lothing.size
    click_on "Update C lothing"

    assert_text "C lothing was successfully updated"
    click_on "Back"
  end

  test "destroying a C lothing" do
    visit c_lothings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C lothing was successfully destroyed"
  end
end
