class Comment < ApplicationRecord

  # Direct Associations
  belongs_to :author, :class_name => "User"
  belongs_to :profile, :class_name => "User"

end
