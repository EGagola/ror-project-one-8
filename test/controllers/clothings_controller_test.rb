require 'test_helper'

class ClothingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clothing = clothings(:one)
  end

  test "should get index" do
    get clothings_url
    assert_response :success
  end

  test "should get new" do
    get new_clothing_url
    assert_response :success
  end

  test "should create clothing" do
    assert_difference('Clothing.count') do
      post clothings_url, params: { clothing: { category: @clothing.category, colour: @clothing.colour, description: @clothing.description, name: @clothing.name, outer_id: @clothing.outer_id, price: @clothing.price, size: @clothing.size } }
    end

    assert_redirected_to clothing_url(Clothing.last)
  end

  test "should show clothing" do
    get clothing_url(@clothing)
    assert_response :success
  end

  test "should get edit" do
    get edit_clothing_url(@clothing)
    assert_response :success
  end

  test "should update clothing" do
    patch clothing_url(@clothing), params: { clothing: { category: @clothing.category, colour: @clothing.colour, description: @clothing.description, name: @clothing.name, outer_id: @clothing.outer_id, price: @clothing.price, size: @clothing.size } }
    assert_redirected_to clothing_url(@clothing)
  end

  test "should destroy clothing" do
    assert_difference('Clothing.count', -1) do
      delete clothing_url(@clothing)
    end

    assert_redirected_to clothings_url
  end
end
