class Course < ActiveRecord::Base
  has_one :department, through: :course_type
  belongs_to :course_type

  def to_s
    self.code
  end
end
