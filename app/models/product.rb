class Product < ApplicationRecord
	validates :title, presence: true
	validates :price, presence: true

	mount_uploader :image, ImageUploader
end
