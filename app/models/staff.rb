class Staff < ActiveRecord::Base
  belongs_to :department
  belongs_to :staff_position
  belongs_to :staff_grade

  has_and_belongs_to_many :papers
end
