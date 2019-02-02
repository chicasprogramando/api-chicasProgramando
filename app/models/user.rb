class User < ApplicationRecord
	# Include default devise modules.
	
  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable
         # :confirmable
	
	include DeviseTokenAuth::Concerns::User
	# has_many :projects
	
	validates :name, :title, :senority, :skills, presence: true

end
