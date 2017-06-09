class Job < ApplicationRecord

  # Direct Associations
  belongs_to :user
  belongs_to :company

  validates :company_id, :presence => true
  validates :user_id, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true

end
