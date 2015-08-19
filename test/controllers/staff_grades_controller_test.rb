require 'test_helper'

class StaffGradesControllerTest < ActionController::TestCase
  setup do
    @staff_grade = staff_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_grade" do
    assert_difference('StaffGrade.count') do
      post :create, staff_grade: { max_periods_per_day: @staff_grade.max_periods_per_day, max_periods_per_week: @staff_grade.max_periods_per_week, name: @staff_grade.name, priority: @staff_grade.priority }
    end

    assert_redirected_to staff_grade_path(assigns(:staff_grade))
  end

  test "should show staff_grade" do
    get :show, id: @staff_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_grade
    assert_response :success
  end

  test "should update staff_grade" do
    patch :update, id: @staff_grade, staff_grade: { max_periods_per_day: @staff_grade.max_periods_per_day, max_periods_per_week: @staff_grade.max_periods_per_week, name: @staff_grade.name, priority: @staff_grade.priority }
    assert_redirected_to staff_grade_path(assigns(:staff_grade))
  end

  test "should destroy staff_grade" do
    assert_difference('StaffGrade.count', -1) do
      delete :destroy, id: @staff_grade
    end

    assert_redirected_to staff_grades_path
  end
end
