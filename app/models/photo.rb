class Photo < ApplicationRecord


  # Direct Associations
  belongs_to :user

  validates :image, :presence => true
  validates :user_id, :presence => true
end
