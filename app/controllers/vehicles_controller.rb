class VehiclesController < ApplicationController
    layout 'internal'
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,:set_profile_menu
  def set_profile_menu
    if current_user
      @setprofileclient = false
      @setprofiledriver = false
      @setprofilevehicle = false
      @setprofilemodulo = false
      @setprofileprofile = false
      @userprofile=User.find(current_user.id).profile.id
      @module_profiles = ModuleProfile.where("idprofile=" + @userprofile.to_s)
      @module_profiles.each do |module_profile| 
        @vartmp=ModuleProfile.where("idprofile=" + @userprofile.to_s).count
        if module_profile.idmodulo == 1 
          @setprofileclient = true
        end
        if module_profile.idmodulo == 2 
          @setprofiledriver = true
        end
        if module_profile.idmodulo == 3 
          @setprofilevehicle = true
        end
        if module_profile.idmodulo == 4
          @setprofilemodulo = true
        end
        if module_profile.idmodulo == 5
          @setprofileprofile = true
        end
        if module_profile.idmodulo == 6
          @setprolocalitie = true
        end
      end
    end
  end
  
  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.all
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:vehicle_brand_id, :vehicle_model_id, :placa, :year, :numberseat, :vehicle_type_id, :state_id)
    end
end
