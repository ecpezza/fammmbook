class Function < ApplicationRecord

  # Direct Associations
  has_many :roles, :dependent => :destroy

  # Indirect Associations
  has_many :users, :through => :roles, :source => :user
  
end
