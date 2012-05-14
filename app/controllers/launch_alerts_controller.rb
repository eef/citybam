class LaunchAlertsController < ApplicationController
  # GET /launch_alerts
  # GET /launch_alerts.json
  def index
    @launch_alerts = LaunchAlert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @launch_alerts }
    end
  end

  # GET /launch_alerts/1
  # GET /launch_alerts/1.json
  def show
    @launch_alert = LaunchAlert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @launch_alert }
    end
  end

  # GET /launch_alerts/new
  # GET /launch_alerts/new.json
  def new
    @launch_alert = LaunchAlert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @launch_alert }
    end
  end

  # GET /launch_alerts/1/edit
  def edit
    @launch_alert = LaunchAlert.find(params[:id])
  end

  # POST /launch_alerts
  # POST /launch_alerts.json
  def create
    @launch_alert = LaunchAlert.new(params[:launch_alert])

    respond_to do |format|
      if @launch_alert.save
        format.html { redirect_to @launch_alert, notice: 'Launch alert was successfully created.' }
        format.json { render json: @launch_alert, status: :created, location: @launch_alert }
      else
        format.html { render action: "new" }
        format.json { render json: @launch_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /launch_alerts/1
  # PUT /launch_alerts/1.json
  def update
    @launch_alert = LaunchAlert.find(params[:id])

    respond_to do |format|
      if @launch_alert.update_attributes(params[:launch_alert])
        format.html { redirect_to @launch_alert, notice: 'Launch alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @launch_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launch_alerts/1
  # DELETE /launch_alerts/1.json
  def destroy
    @launch_alert = LaunchAlert.find(params[:id])
    @launch_alert.destroy

    respond_to do |format|
      format.html { redirect_to launch_alerts_url }
      format.json { head :no_content }
    end
  end
end
