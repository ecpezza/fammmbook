class Job < ApplicationRecord

  # Direct Associations
  belongs_to :user
  belongs_to :company
  
end
