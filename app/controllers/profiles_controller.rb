class ProfilesController < ApplicationController
  layout 'internal'
  before_action :set_profile, only: [:show, :edit, :update, :destroy, :addmodule]

  # GET /addmodule_profiles
  def addmodule
   
   @varmodulos = Modulo.all
   @module_profiles = ModuleProfile.where("idprofile=" + params[:id])
   @module_profiles.each do |module_profile|
     @varmodulos.find(module_profile.idmodulo)
   end
  end
  
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @states = State.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @module_profiles = ModuleProfile.all
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    @cont_module_profile = 0
    @varctrl_vista=0
  end

  # GET /profiles/1/edit
  def edit
    @varctrl_vista=1
    @module_profiles = ModuleProfile.where("idprofile=" + params[:id])
    @cont_module_profile = ModuleProfile.where("idprofile=" + params[:id]).count
    @val_module_profile = ModuleProfile.where("idprofile=" + params[:id]).count == Modulo.all.count
    
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :status)
    end
end
