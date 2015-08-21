class Paper < ActiveRecord::Base
  belongs_to :paper_type
  belongs_to :term
end
