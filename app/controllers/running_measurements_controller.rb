class RunningMeasurementsController < ApplicationController
  before_action :set_running_measurement, only: [:show, :edit, :update, :destroy]

  # GET /running_measurements
  # GET /running_measurements.json
  def index
    @running_measurements = RunningMeasurement.all
  end

  # GET /running_measurements/1
  # GET /running_measurements/1.json
  def show
  end

  # GET /running_measurements/new
  def new
    @running_measurement = RunningMeasurement.new
  end

  # GET /running_measurements/1/edit
  def edit
  end

  # POST /running_measurements
  # POST /running_measurements.json
  def create
    @running_measurement = RunningMeasurement.new(running_measurement_params)

    respond_to do |format|
      if @running_measurement.save
        format.html { redirect_to @running_measurement, notice: 'Running measurement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @running_measurement }
      else
        format.html { render action: 'new' }
        format.json { render json: @running_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /running_measurements/1
  # PATCH/PUT /running_measurements/1.json
  def update
    respond_to do |format|
      if @running_measurement.update(running_measurement_params)
        format.html { redirect_to @running_measurement, notice: 'Running measurement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @running_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /running_measurements/1
  # DELETE /running_measurements/1.json
  def destroy
    @running_measurement.destroy
    respond_to do |format|
      format.html { redirect_to running_measurements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running_measurement
      @running_measurement = RunningMeasurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def running_measurement_params
      params.require(:running_measurement).permit(:distance_miles, :duration_seconds, :calories)
    end
end
