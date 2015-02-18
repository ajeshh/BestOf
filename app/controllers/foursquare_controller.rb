class FoursquaresController < ApplicationController
  BASE_URL = "https://api.foursquare.com/v2/"
  CLIENT_ID = ENV['consumer_key']
  CLIENT_SECRET = ENV['consumer_secret']

  def make_request(url, params)
  	params ||=  {}
  	params[:json] = true
  	headers = {}
  	if 

  	this is what is gonna define how to make requests, handle tokens and how to interpret the stupid thing
  	need to get token token token token token token token

  	render json data and parse:
  	response = Typhoeus.get(url, headers: headers, params: params)
    body = JSON.parse(response.body)


    also need error message if no fuckin response

 end

 def explore_for_venue(query)
 	search_for(query, "venues")
 	set user default location to longitude latitude from SF, add geocoder later
 	also access user_token
 	should look like this:
 	suggested completion
 	https://api.foursquare.com/v2/venues/suggestCompletion?ll=40.7,-74&query=foursqu&oauth_token=FTS4IPPCXZ4PZGKOKKKRXLZA1ESTALAYF2OCPNW2XEFZDZYZ&v=20150217

 end


 def checkin
 	fill in venueId from selection from search_for_venue()
 	get @user
 	https://api.foursquare.com/v2/checkins/add
 	Docs: https://developer.foursquare.com/docs/checkins/add
 	broadcast:private
 	need to set up a method for capturing successful checkin into do |variable|

 	should end up looking like this:
 	url = "https://api.foursquare.com/v2/checkins/add?venueId=" +venue+ "&oauth_token=" + user + "&broadcast=private"
 		
 	end

 def tips
 	need to get venueId .. dont need checkin
 	https://api.foursquare.com/v2/tips/add
 	Do need venueId and text
 	Need to hash out text so that when user selects venueItem and best rating it should equal something like this: #BestPizzaInNeighborhood

 	Docs: https://developer.foursquare.com/docs/tips/add

 end


 private

	 def access_token
	    session[:access_token]
	 end

end



