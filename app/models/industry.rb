class Industry < ApplicationRecord

  # Direct Associations
  has_many :involvements, :dependent => :destroy

  # Indirect Associations
  has_many :users, :through => :involvements, :source => :user

  validates :industry_name, :presence => true

end
