class User < ApplicationRecord
	validates :name, :title, :senority, :skills, presence: true

end
