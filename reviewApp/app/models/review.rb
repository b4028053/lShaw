class Review < ApplicationRecord
	belongs_to :profile

	validates :author, presence:true
	validates :productRating, presence:true
	validates :reviewContent, presence:true
	validates :reviewDate, presence:true

end
