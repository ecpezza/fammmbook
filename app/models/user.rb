class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
# Direct Associations
   has_many :photos, :dependent => :destroy
   has_many :authored_comments, :class_name => "Comment", :foreign_key => "author_id", :dependent => :destroy
   has_many :profile_comments, :class_name => "Comment", :foreign_key => "profile_id", :dependent => :destroy
   has_many :involvements, :dependent => :destroy
   has_many :roles, :dependent => :destroy
   has_many :jobs, :dependent => :destroy
   has_many :degrees, :dependent => :destroy

# Indirect Associations
  has_many :industries, :through => :involvements, :source => :industry
  has_many :functions, :through => :roles, :source => :function
  has_many :companies, :through => :jobs, :source => :company
  has_many :schools, :through => :degrees, :source => :school

end
