class Note < ActiveRecord::Base
  belongs_to :course
  validates :creator, :body, presence: true
end
