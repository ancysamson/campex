class Term < ActiveRecord::Base
  has_many :papers
  belongs_to :batch

  end
