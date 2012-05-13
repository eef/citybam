class CitiesController < ApplicationController

  respond_to :html, :js, :json

  def index
    @city = City.gmaps(params[:city]).to_gmaps4rails
  end

  def show
    @city = City.gmaps(params[:id]).to_gmaps4rails
  end

  def search

    query = params[:term]

    cities = City.search(query)

    respond_with(cities.to_json)

  end

end
