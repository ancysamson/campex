require 'test_helper'

class Staff_PositionsControllerTest < ActionController::TestCase
  setup do
    @staff_position = staff_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_position" do
    assert_difference('Staff_Position.count') do
      post :create, staff_position: { category: @staff_position.category, name: @staff_position.name }
    end

    assert_redirected_to staff_position_path(assigns(:staff_position))
  end

  test "should show staff_position" do
    get :show, id: @staff_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_position
    assert_response :success
  end

  test "should update staff_position" do
    patch :update, id: @staff_position, staff_position: { category: @staff_position.category, name: @staff_position.name }
    assert_redirected_to staff_position_path(assigns(:staff_position))
  end

  test "should destroy staff_position" do
    assert_difference('Staff_Position.count', -1) do
      delete :destroy, id: @staff_position
    end

    assert_redirected_to staff_positions_path
  end
end
