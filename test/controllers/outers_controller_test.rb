require 'test_helper'

class OutersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outer = outers(:one)
  end

  test "should get index" do
    get outers_url
    assert_response :success
  end

  test "should get new" do
    get new_outer_url
    assert_response :success
  end

  test "should create outer" do
    assert_difference('Outer.count') do
      post outers_url, params: { outer: { name: @outer.name, user_id: @outer.user_id } }
    end

    assert_redirected_to outer_url(Outer.last)
  end

  test "should show outer" do
    get outer_url(@outer)
    assert_response :success
  end

  test "should get edit" do
    get edit_outer_url(@outer)
    assert_response :success
  end

  test "should update outer" do
    patch outer_url(@outer), params: { outer: { name: @outer.name, user_id: @outer.user_id } }
    assert_redirected_to outer_url(@outer)
  end

  test "should destroy outer" do
    assert_difference('Outer.count', -1) do
      delete outer_url(@outer)
    end

    assert_redirected_to outers_url
  end
end
