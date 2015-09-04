class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :gender, :blood_group, :dob, :birth_place, :born_in, :religion, :reservation_category_id, :caste_id, :nationality_id, :address_line1, :address_line2, :post_office, :taluk, :district, :state, :pincode, :country_id, :comm_address_line1, :comm_address_line2, :comm_post_office, :comm_taluk, :comm_district, :comm_state, :comm_pincode, :comm_country_id, :hostel_required, :ex_service, :nss, :ncc, :board_id, :stream_id, :board_name, :year_of_passing, :blind, :deaf, :orthopedic, :arts, :sports, :no_of_chances, :illiteracy_eradication, :twelfth_yop, :twelfth_yos, :twelfth_regno, :twelfth_institution, :twelfth_tc_no, :twelfth_tc_date, :tenth_yop, :tenth_yos, :tenth_regno, :tenth_institution, :email, :aadhar_no, :mobile_no, :phone_no, :bank_account)
    end
end
