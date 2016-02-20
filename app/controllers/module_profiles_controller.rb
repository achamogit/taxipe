class ModuleProfilesController < ApplicationController
  layout 'internal'
  before_action :set_module_profile, only: [:show, :edit, :update, :destroy]
  

  # GET /module_profiles
  # GET /module_profiles.json
  def index
    @module_profiles = ModuleProfile.all
  end

  # GET /module_profiles/1
  # GET /module_profiles/1.json
  def show
  end

  # GET /module_profiles/new
  def new
    @cadkey=''
    @idprofile=params[:id]
    @list_module_profiles = ModuleProfile.where("idprofile=" + params[:id])
    #@cadkey = @list_module_profiles.count.to_s
    @arr_modulo = Array.new
     @arr_modulo.push(0)
      @list_module_profiles.each do |module_profile|
        @arr_modulo.push(module_profile.idmodulo.to_s) 
      end
    @varmodulos = Modulo.where('id NOT IN (?)',@arr_modulo)
    @module_profile = ModuleProfile.new
  end

  # GET /module_profiles/1/edit
  def edit
  end

  # POST /module_profiles
  # POST /module_profiles.json
  def create
    @module_profile = ModuleProfile.new(module_profile_params)
    varid_profile=@module_profile.idprofile
    respond_to do |format|
      if @module_profile.save
        format.html { redirect_to edit_profile_url(varid_profile), notice: 'Module was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @module_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_profiles/1
  # PATCH/PUT /module_profiles/1.json
  def update
    respond_to do |format|
      if @module_profile.update(module_profile_params)
        format.html { redirect_to @module_profile, notice: 'Module profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @module_profile }
      else
        format.html { render :edit }
        format.json { render json: @module_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_profiles/1
  # DELETE /module_profiles/1.json
  def destroy
    varid_profile=@module_profile.idprofile
    @module_profile.destroy
    respond_to do |format|
      format.html { redirect_to edit_profile_url(varid_profile), notice: 'Module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_profile
      @module_profile = ModuleProfile.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def module_profile_params
      params.require(:module_profile).permit(:idmodulo, :idprofile)
    end
end
