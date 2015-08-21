require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { address: @staff.address, adhaar_no: @staff.adhaar_no, bank_account_no: @staff.bank_account_no, blood_group: @staff.blood_group, date_of_joining: @staff.date_of_joining, department_id: @staff.department_id, dob: @staff.dob, email: @staff.email, experience_info: @staff.experience_info, experience_months: @staff.experience_months, experience_years: @staff.experience_years, father_name: @staff.father_name, first_name: @staff.first_name, gender: @staff.gender, last_name: @staff.last_name, marital_status: @staff.marital_status, mobile_no: @staff.mobile_no, mother_name: @staff.mother_name, nationality: @staff.nationality, pan_no: @staff.pan_no, qualification: @staff.qualification, spouse_name: @staff.spouse_name, staff_grade_id: @staff.staff_grade_id, staff_id: @staff.staff_id, staff_position_id: @staff.staff_position_id }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { address: @staff.address, adhaar_no: @staff.adhaar_no, bank_account_no: @staff.bank_account_no, blood_group: @staff.blood_group, date_of_joining: @staff.date_of_joining, department_id: @staff.department_id, dob: @staff.dob, email: @staff.email, experience_info: @staff.experience_info, experience_months: @staff.experience_months, experience_years: @staff.experience_years, father_name: @staff.father_name, first_name: @staff.first_name, gender: @staff.gender, last_name: @staff.last_name, marital_status: @staff.marital_status, mobile_no: @staff.mobile_no, mother_name: @staff.mother_name, nationality: @staff.nationality, pan_no: @staff.pan_no, qualification: @staff.qualification, spouse_name: @staff.spouse_name, staff_grade_id: @staff.staff_grade_id, staff_id: @staff.staff_id, staff_position_id: @staff.staff_position_id }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
