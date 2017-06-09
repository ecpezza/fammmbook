class Degree < ApplicationRecord

  # Direct Associations
  belongs_to :user
  belongs_to :school

  validates :degree, :presence => true
  validates :grad_year, :presence => true
  validates :school_id, :presence => true
  validates :user_id, :presence => true

end
