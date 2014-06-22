require 'rubygems'
require 'open-uri'
require 'google_places'


class SearchController < ApplicationController
  def index
  	@search_query = params[:city]

  	puts "PARAMS PLS" 
  	@client = GooglePlaces::Client.new("AIzaSyBlhrcnVIl-u5nHwY_X96jQNl2ETvpioPI")

  	@types = params[:category]

  	@cityspots = @client.spots_by_query(@search_query)
  	@lat = @cityspots[0].lat
  	@lng = @cityspots[0].lng
  	@spots = @client.spots(@lat, @lng, :types => @types,:radius => 40000)

  	@photo_url = Array.new

  	# url = @spots[0].photos[0].fetch_url(800)

  	@sortedspots = @spots.sort!{|x,y| y[:rating] <=> x[:rating]}

  	puts "\n"
  	puts @sortedsorts

  	@sortedspots.each do |spot|
  		if spot.photos[0] != nil
  			@photo_url << spot.photos[0].fetch_url(1000)
  		end
  	end

  	# @spots = @client.spots(@lat, @lng, :radius => 40000)




  	# @spots_by_query = @client.spots_by_query(@search_query)

  	# if (@spots_by_query[0].types).eql? "political"
  	# 	@name = @spots_by_query.name
  	# end

  end

  def create

  end
end
