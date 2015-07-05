class Photo < ActiveRecord::Base
	mount_uploader :image, PictureUploader
	belongs_to :user
	has_many :comments
end
