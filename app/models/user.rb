class User < ActiveRecord::Base
	has_many :checkins
	has_many :userbests
	has_many :venues, :through => :checkins
	has_many :bests, :through => :userbests

	# def self.from_omniauth(auth)
	#     where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	# end
	  
	# def self.create_from_omniauth(auth)
	#     create! do |user|
	#       user.provider = auth["provider"]
	#       user.uid = auth["uid"]
	#     end
	# end

	def self.from_omniauth(auth)
	    where(uid: auth.uid).first_or_initialize.tap do |user|
	      user.provider = auth.provider
	      user.uid = auth.uid
	    end
  	end
end
