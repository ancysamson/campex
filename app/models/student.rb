class Student < ActiveRecord::Base
  belongs_to :reservation_category
  belongs_to :caste
  belongs_to :board
  belongs_to :stream
end
