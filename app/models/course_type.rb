class CourseType < ActiveRecord::Base
  belongs_to :department

  def to_s
    self.code
  end
end
