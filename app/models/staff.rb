class Staff < ActiveRecord::Base
  belongs_to :department
  belongs_to :staff_position
  belongs_to :staff_grade
end
