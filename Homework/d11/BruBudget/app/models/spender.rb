class Spender < ActiveRecord::Base
	has_many :expenditures , dependent: :destroy
end
