class Period < ActiveRecord::Base
  belongs_to :class_timing

  def duration
    "#{self.start_time.hour}:#{self.start_time.min} - #{self.end_time.hour}:#{self.end_time.min}"
  end
end
