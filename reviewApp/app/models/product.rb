class Product < ApplicationRecord

	has_many :reviews
	#attr_acessible :productPhoto
	has_attached_file :productPhoto
	
	validates :name, presence:true
	validates :brand, presence:true
	validates :avgCost, presence:true
	validates :category, presence:true
	validates :releaseDate, presence:true
	validates :description, presence:true

	#validates_attachment :productPhoto, size: { less_than: 1.megabyte }
	#validates_attachment_content_type :productPhoto, :content_type => /^image\/(png|gif|jpeg)/
	#validates_attachment_file_name :productPhoto, :matches => [/png\Z/, /je?g\Z/, /gif\Z/]
	validates_attachment_content_type :productPhoto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
end
