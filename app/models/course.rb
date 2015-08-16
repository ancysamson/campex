class Course < ActiveRecord::Base
  belongs_to :course_type

  def to_s
    self.code
  end
end
