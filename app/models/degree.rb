class Degree < ApplicationRecord

  # Direct Associations
  belongs_to :user
  belongs_to :school

end
