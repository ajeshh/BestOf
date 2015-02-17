class User < ActiveRecord::Base
	has_many :checkins
	has_many :userbests
	has_many :venues, :through => :checkins
	has_many :bests, :through => :userbests
end
