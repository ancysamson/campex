class StaffGradesController < ApplicationController
  before_action :set_staff_grade, only: [:show, :edit, :update, :destroy]

  # GET /staff_grades
  # GET /staff_grades.json
  def index
    @staff_grades = StaffGrade.all
  end

  # GET /staff_grades/1
  # GET /staff_grades/1.json
  def show
  end

  # GET /staff_grades/new
  def new
    @staff_grade = StaffGrade.new
  end

  # GET /staff_grades/1/edit
  def edit
  end

  # POST /staff_grades
  # POST /staff_grades.json
  def create
    @staff_grade = StaffGrade.new(staff_grade_params)

    respond_to do |format|
      if @staff_grade.save
        format.html { redirect_to @staff_grade, notice: 'Staff grade was successfully created.' }
        format.json { render :show, status: :created, location: @staff_grade }
      else
        format.html { render :new }
        format.json { render json: @staff_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_grades/1
  # PATCH/PUT /staff_grades/1.json
  def update
    respond_to do |format|
      if @staff_grade.update(staff_grade_params)
        format.html { redirect_to @staff_grade, notice: 'Staff grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_grade }
      else
        format.html { render :edit }
        format.json { render json: @staff_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_grades/1
  # DELETE /staff_grades/1.json
  def destroy
    @staff_grade.destroy
    respond_to do |format|
      format.html { redirect_to staff_grades_url, notice: 'Staff grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_grade
      @staff_grade = StaffGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_grade_params
      params.require(:staff_grade).permit(:name, :priority, :max_periods_per_day, :max_periods_per_week)
    end
end
