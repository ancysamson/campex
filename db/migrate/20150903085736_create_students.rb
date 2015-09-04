class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.string :blood_group
      t.date :dob
      t.string :birth_place
      t.string :born_in
      t.string :religion
      t.belongs_to :reservation_category, index: true, foreign_key: true
      t.belongs_to :caste, index: true, foreign_key: true
      t.string :nationality_id
      t.string :address_line1
      t.string :address_line2
      t.string :post_office
      t.string :taluk
      t.string :district
      t.string :state
      t.string :pincode
      t.string :country_id
      t.string :comm_address_line1
      t.string :comm_address_line2
      t.string :comm_post_office
      t.string :comm_taluk
      t.string :comm_district
      t.string :comm_state
      t.string :comm_pincode
      t.string :comm_country_id
      t.boolean :hostel_required
      t.string :ex_service
      t.string :nss
      t.string :ncc
      t.belongs_to :board, index: true, foreign_key: true
      t.belongs_to :stream, index: true, foreign_key: true
      t.string :board_name
      t.string :year_of_passing
      t.string :blind
      t.string :deaf
      t.string :orthopedic
      t.string :arts
      t.string :sports
      t.string :no_of_chances
      t.string :illiteracy_eradication
      t.string :twelfth_yop
      t.string :twelfth_yos
      t.string :twelfth_regno
      t.string :twelfth_institution
      t.string :twelfth_tc_no
      t.date :twelfth_tc_date
      t.string :tenth_yop
      t.string :tenth_yos
      t.string :tenth_regno
      t.string :tenth_institution
      t.string :email
      t.string :aadhar_no
      t.string :mobile_no
      t.string :phone_no
      t.string :bank_account

      t.timestamps null: false
    end
  end
end
