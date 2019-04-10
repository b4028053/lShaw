class Product < ApplicationRecord
	has_many :reviews

	validates :name, presence:true
	validates :brand, presence:true
	validates :avgCost, presence:true
	validates :category, presence:true
	validates :releaseDate, presence:true
	validates :description, presence:true
	#validates :productPhoto, presence:true
end
