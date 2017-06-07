class School < ApplicationRecord

  # Direct Associations
  has_many :degrees, :dependent => :destroy

  # Indirect Associations
  has_many :users, :through => :degrees, :source => :user
  
end
