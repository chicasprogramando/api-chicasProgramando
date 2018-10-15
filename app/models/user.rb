class User < ApplicationRecord
	# has_many :projects
	
	validates :name, :title, :senority, :skills, presence: true

end
