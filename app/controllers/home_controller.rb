class HomeController < ApplicationController
  def index
    @launch_alert = LaunchAlert.new 
  end
end
