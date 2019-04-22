class Review < ApplicationRecord

	belongs_to :profile, optional: true
	belongs_to :product, optional: true

	validates :author, presence:true
	validates :productID, presence:true
	validates :productRating, presence:true
	validates :reviewContent, presence:true
	validates :reviewDate, presence:true

end
