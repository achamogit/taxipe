class VehicleBrandsController < ApplicationController
  before_action :set_vehicle_brand, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_brands
  # GET /vehicle_brands.json
  def index
    @vehicle_brands = VehicleBrand.all
  end

  # GET /vehicle_brands/1
  # GET /vehicle_brands/1.json
  def show
  end

  # GET /vehicle_brands/new
  def new
    @vehicle_brand = VehicleBrand.new
  end

  # GET /vehicle_brands/1/edit
  def edit
  end

  # POST /vehicle_brands
  # POST /vehicle_brands.json
  def create
    @vehicle_brand = VehicleBrand.new(vehicle_brand_params)

    respond_to do |format|
      if @vehicle_brand.save
        format.html { redirect_to @vehicle_brand, notice: 'Vehicle brand was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_brand }
      else
        format.html { render :new }
        format.json { render json: @vehicle_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_brands/1
  # PATCH/PUT /vehicle_brands/1.json
  def update
    respond_to do |format|
      if @vehicle_brand.update(vehicle_brand_params)
        format.html { redirect_to @vehicle_brand, notice: 'Vehicle brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_brand }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_brands/1
  # DELETE /vehicle_brands/1.json
  def destroy
    @vehicle_brand.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_brands_url, notice: 'Vehicle brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_brand
      @vehicle_brand = VehicleBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_brand_params
      params.require(:vehicle_brand).permit(:name)
    end
end
