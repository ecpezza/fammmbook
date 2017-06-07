class Role < ApplicationRecord

  # Direct Associations
  belongs_to :user
  belongs_to :function

end
