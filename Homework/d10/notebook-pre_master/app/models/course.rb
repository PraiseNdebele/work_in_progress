class Course < ActiveRecord::Base
	has_many :notes
	validates :name , :instructor , :time , presence: true
end
