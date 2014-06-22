require 'rubygems'
require 'open-uri'
require 'google_places'


class SearchController < ApplicationController
  def index
  	@search_query = params[:city]

  	puts "PARAMS PLS" 
  	puts params
  	@client = GooglePlaces::Client.new("AIzaSyB8JsJYe-lexJph91XALK-XhPxPQZAlk48")

  	@types = params[:category]

  	@cityspots = @client.spots_by_query(@search_query)
  	@lat = @cityspots[0].lat
  	@lng = @cityspots[0].lng
  	@spots = @client.spots(@lat, @lng, :types => @types, :radius => 40000, :rating => 'prominence')

  	# @spots = @client.spots(@lat, @lng, :radius => 40000)




  	# @spots_by_query = @client.spots_by_query(@search_query)

  	# if (@spots_by_query[0].types).eql? "political"
  	# 	@name = @spots_by_query.name
  	# end

  end

  def create

  end
end
