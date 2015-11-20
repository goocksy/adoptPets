class Advertisment < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_many :comments
	validates :tittle, :comment, :price, :category_id, presence: true
	
	mount_uploader :image, ImageUploader
	mount_uploader :image1, ImageUploader
	mount_uploader :image2, ImageUploader
	mount_uploader :image3, ImageUploader
end
