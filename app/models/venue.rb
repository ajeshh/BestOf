class Venue < ActiveRecord::Base
	has_many :checkins
	has_many :venueitems
	has_many :venuebests
	has_many :venues, :through => :checkins
	has_many :items, :through => :venueitems
	has_many :bests, :through => :userbests
end
