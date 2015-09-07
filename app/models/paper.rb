class Paper < ActiveRecord::Base
  belongs_to :paper_type
  belongs_to :term

  has_one :batch, through: :term
  has_one :course, through: :batch
  has_and_belongs_to_many :staffs

  def paper_details
    "#{self.name} - #{self.batch} - #{self.course}"
  end

  def to_s
    self.code
  end
end
