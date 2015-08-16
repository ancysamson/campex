class Department < ActiveRecord::Base
  has_many :course_types
  
  def to_s
    self.code
  end
end
