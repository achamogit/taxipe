class LocalitiesController < InheritedResources::Base
layout 'internal'
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
  private

    def locality_params
      params.require(:locality).permit(:description, :state_id)
    end
end

