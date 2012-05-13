class HomeController < ApplicationController
  def index
    @city = City.gmaps.to_gmaps4rails
  end
end
