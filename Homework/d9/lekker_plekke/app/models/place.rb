class Place < ActiveRecord::Base
	has_many :comments
	validates :name,:about,:location, presence: true
end
