class Department < ActiveRecord::Base
  def to_s
    self.code
  end
end
