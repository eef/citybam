class LaunchAlertsController < ApplicationController

  def create
    @launch_alert = LaunchAlert.new(params[:launch_alert])
    respond_to do |format|
      if @launch_alert.save
        format.html { redirect_to root_path, notice: 'Thank you!  We will email you when we launch!' }
        format.json { render json: @launch_alert, status: :created, location: @launch_alert }
      else
        format.html { render action: "new" }
        format.json { render json: @launch_alert.errors, status: :unprocessable_entity }
      end
    end
  end

 end
