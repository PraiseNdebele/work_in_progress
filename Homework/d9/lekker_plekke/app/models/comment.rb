class Comment < ActiveRecord::Base
  belongs_to :place
	validates :name,:comment, presence: true
end
