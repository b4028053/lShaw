class Profile < ApplicationRecord

	has_many :reviews
	belongs_to :user, optional: true
	
	has_attached_file :userPhoto

	validates :fullName, presence:true
	validates :DOB, presence:true
	validates :address, presence:true
	validates :city, presence:true
	validates :country, presence:true
	#validates :userPhoto, presence:true

	validates_attachment_content_type :userPhoto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
end
