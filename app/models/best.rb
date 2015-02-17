class Best < ActiveRecord::Base
	has_many :userbests
	has_many :venuebests
	has_many :itembests
	has_many :users, :through => :userbests
	has_many :venues, :through => :venuebests
	has_many :items, :through => :itembests
end
