class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_joining
      t.string :email
      t.string :gender
      t.date :dob
      t.belongs_to :department, index: true, foreign_key: true
      t.belongs_to :staff_position, index: true, foreign_key: true
      t.belongs_to :staff_grade, index: true, foreign_key: true
      t.string :qualification
      t.text :experience_info
      t.integer :experience_years
      t.integer :experience_months
      t.string :marital_status
      t.string :father_name
      t.string :mother_name
      t.string :spouse_name
      t.string :blood_group
      t.string :nationality
      t.string :address
      t.string :mobile_no
      t.string :bank_account_no
      t.string :pan_no
      t.string :adhaar_no

      t.timestamps null: false
    end
  end
end
