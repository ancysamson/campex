require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { aadhar_no: @student.aadhar_no, address_line1: @student.address_line1, address_line2: @student.address_line2, arts: @student.arts, bank_account: @student.bank_account, birth_place: @student.birth_place, blind: @student.blind, blood_group: @student.blood_group, board_id: @student.board_id, board_name: @student.board_name, born_in: @student.born_in, caste_id: @student.caste_id, comm_address_line1: @student.comm_address_line1, comm_address_line2: @student.comm_address_line2, comm_country_id: @student.comm_country_id, comm_district: @student.comm_district, comm_pincode: @student.comm_pincode, comm_post_office: @student.comm_post_office, comm_state: @student.comm_state, comm_taluk: @student.comm_taluk, country_id: @student.country_id, deaf: @student.deaf, district: @student.district, dob: @student.dob, email: @student.email, ex_service: @student.ex_service, gender: @student.gender, hostel_required: @student.hostel_required, illiteracy_eradication: @student.illiteracy_eradication, mobile_no: @student.mobile_no, name: @student.name, nationality_id: @student.nationality_id, ncc: @student.ncc, no_of_chances: @student.no_of_chances, nss: @student.nss, orthopedic: @student.orthopedic, phone_no: @student.phone_no, pincode: @student.pincode, post_office: @student.post_office, religion: @student.religion, reservation_category_id: @student.reservation_category_id, sports: @student.sports, state: @student.state, stream_id: @student.stream_id, taluk: @student.taluk, tenth_institution: @student.tenth_institution, tenth_regno: @student.tenth_regno, tenth_yop: @student.tenth_yop, tenth_yos: @student.tenth_yos, twelfth_institution: @student.twelfth_institution, twelfth_regno: @student.twelfth_regno, twelfth_tc_date: @student.twelfth_tc_date, twelfth_tc_no: @student.twelfth_tc_no, twelfth_yop: @student.twelfth_yop, twelfth_yos: @student.twelfth_yos, year_of_passing: @student.year_of_passing }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { aadhar_no: @student.aadhar_no, address_line1: @student.address_line1, address_line2: @student.address_line2, arts: @student.arts, bank_account: @student.bank_account, birth_place: @student.birth_place, blind: @student.blind, blood_group: @student.blood_group, board_id: @student.board_id, board_name: @student.board_name, born_in: @student.born_in, caste_id: @student.caste_id, comm_address_line1: @student.comm_address_line1, comm_address_line2: @student.comm_address_line2, comm_country_id: @student.comm_country_id, comm_district: @student.comm_district, comm_pincode: @student.comm_pincode, comm_post_office: @student.comm_post_office, comm_state: @student.comm_state, comm_taluk: @student.comm_taluk, country_id: @student.country_id, deaf: @student.deaf, district: @student.district, dob: @student.dob, email: @student.email, ex_service: @student.ex_service, gender: @student.gender, hostel_required: @student.hostel_required, illiteracy_eradication: @student.illiteracy_eradication, mobile_no: @student.mobile_no, name: @student.name, nationality_id: @student.nationality_id, ncc: @student.ncc, no_of_chances: @student.no_of_chances, nss: @student.nss, orthopedic: @student.orthopedic, phone_no: @student.phone_no, pincode: @student.pincode, post_office: @student.post_office, religion: @student.religion, reservation_category_id: @student.reservation_category_id, sports: @student.sports, state: @student.state, stream_id: @student.stream_id, taluk: @student.taluk, tenth_institution: @student.tenth_institution, tenth_regno: @student.tenth_regno, tenth_yop: @student.tenth_yop, tenth_yos: @student.tenth_yos, twelfth_institution: @student.twelfth_institution, twelfth_regno: @student.twelfth_regno, twelfth_tc_date: @student.twelfth_tc_date, twelfth_tc_no: @student.twelfth_tc_no, twelfth_yop: @student.twelfth_yop, twelfth_yos: @student.twelfth_yos, year_of_passing: @student.year_of_passing }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
