class SearchController < ApplicationController
  def index
  	@search_query = params[:query]
  end

  def create
  	@client = GooglePlaces::Client.new(API_KEY)
  	puts "PLS"
  	puts @client.spots(-33.8670522, 151.1957362, :name => 'italian')



  end
end
