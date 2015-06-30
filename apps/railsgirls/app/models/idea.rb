class Idea < ActiveRecord::Base
	mount_uploader :picture
	has_many :comments
end
