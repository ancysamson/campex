class StaffPosition < ActiveRecord::Base
	belongs_to :staff_category
	
  def to_s
    self.name
  end
end