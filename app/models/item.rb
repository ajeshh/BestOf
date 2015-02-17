class Item < ActiveRecord::Base
	has_many :venueitems
	has_many :itembests
	has_many :venues, :through => :venueitems
	has_many :bests, :through => :itembests
end
