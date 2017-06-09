class Company < ApplicationRecord

  # Direct Associations
  has_many :jobs, :dependent => :destroy

  # Indirect Associations
  has_many :users, :through => :jobs, :source => :user

  validates :company_name, :presence => true, :uniqueness => true
end
