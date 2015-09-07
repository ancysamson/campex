class Timetable < ActiveRecord::Base
  belongs_to :term
  belongs_to :class_timing

  has_many :timetable_entries
  has_many :periods, through: :class_timing
end
