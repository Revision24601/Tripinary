class SearchController < ApplicationController
  def index
  	@search_query = params[:query]
  end

  def create
  end
end
