class Profile < ApplicationRecord
	has_many :reviews

	validates :fullName, presence:true
	validates :DOB, presence:true
	validates :address, presence:true
	validates :city, presence:true
	validates :country, presence:true
	#validates :userPhoto, presence:true
end
