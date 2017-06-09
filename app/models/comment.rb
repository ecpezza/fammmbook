class Comment < ApplicationRecord

  # Direct Associations
  belongs_to :author, :class_name => "User"
  belongs_to :profile, :class_name => "User"

  validates :body, :presence => true
  validates :author_id, :presence => true
  validates :profile_id, :presence => true

end
