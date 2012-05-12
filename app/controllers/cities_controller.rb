class CitiesController < ApplicationController

  respond_to :html, :js, :json

  def search

    query = params[:term]

    cities = City.search(query)

    respond_with(cities.to_json)

  end

end
