class Userbest < ActiveRecord::Base
	belongs_to :user
	belongs_to :best
end
