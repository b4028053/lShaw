class Review < ApplicationRecord

	belongs_to :profile
	#belongs_to :product

	validates :author, presence:true
	validates :productRating, presence:true
	validates :reviewContent, presence:true
	validates :reviewDate, presence:true

end
