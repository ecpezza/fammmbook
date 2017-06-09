class Involvement < ApplicationRecord


  # Direct Associations
  belongs_to :user
  belongs_to :industry

  validates :industry_id, :presence => true
  validates :user_id, :presence => true

  validate :atleast_one_is_checked
  def atleast_one_is_checked
    errors.add(:base, "Select either interest or experience, or both") unless interest || experience
  end

end
