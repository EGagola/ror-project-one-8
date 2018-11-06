require 'test_helper'

class CLothingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_lothing = c_lothings(:one)
  end

  test "should get index" do
    get c_lothings_url
    assert_response :success
  end

  test "should get new" do
    get new_c_lothing_url
    assert_response :success
  end

  test "should create c_lothing" do
    assert_difference('CLothing.count') do
      post c_lothings_url, params: { c_lothing: { category: @c_lothing.category, colour: @c_lothing.colour, description: @c_lothing.description, name: @c_lothing.name, outer_id: @c_lothing.outer_id, price: @c_lothing.price, size: @c_lothing.size } }
    end

    assert_redirected_to c_lothing_url(CLothing.last)
  end

  test "should show c_lothing" do
    get c_lothing_url(@c_lothing)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_lothing_url(@c_lothing)
    assert_response :success
  end

  test "should update c_lothing" do
    patch c_lothing_url(@c_lothing), params: { c_lothing: { category: @c_lothing.category, colour: @c_lothing.colour, description: @c_lothing.description, name: @c_lothing.name, outer_id: @c_lothing.outer_id, price: @c_lothing.price, size: @c_lothing.size } }
    assert_redirected_to c_lothing_url(@c_lothing)
  end

  test "should destroy c_lothing" do
    assert_difference('CLothing.count', -1) do
      delete c_lothing_url(@c_lothing)
    end

    assert_redirected_to c_lothings_url
  end
end
