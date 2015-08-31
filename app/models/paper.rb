class Paper < ActiveRecord::Base
  belongs_to :paper_type
  belongs_to :term

  has_and_belongs_to_many :staffs
end
