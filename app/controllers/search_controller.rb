require 'rubygems'
require 'open-uri'
require 'google_places'


class SearchController < ApplicationController
  def index
  	@search_query = params[:query]
  	@client = GooglePlaces::Client.new("AIzaSyB8JsJYe-lexJph91XALK-XhPxPQZAlk48")
  	@spot = @client.spots(43.653566,-79.3979929)
  end

  def create
  	# @client = GooglePlaces::Client.new(AIzaSyAY76ezR5vhXmXewHWZpdPsKUvA9fIfPP8)
  	@spot = @client.spots(43.653566,-79.3979929)

	@pls = @client.spots_by_query('Pizza near Miami Florida')		  	

  	# @pls = @client.spots_by_query('Pizza near Miami Florida')
  	# puts @client.spots(-33.8670522, 151.1957362, :name => 'italian')

  end
end
