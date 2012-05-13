class HomeController < ApplicationController
  def index
    @city = City.live.where(:name => "London").first
  end
end
