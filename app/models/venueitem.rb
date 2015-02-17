class Venueitem < ActiveRecord::Base
	belongs_to :venue
	belongs_to :item
end
