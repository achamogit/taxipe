class HomeController < ApplicationController
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
      end
    end
  end
  
  def index
  end
  
  def geoget
  end
  
  def rutas
  end
  
  def protipo1
  end  

  def cp000_arq
  end 
  
  def cp000_mod
  end   
  
  def cp000
  end 
  
  def cp000_pbi
  end 
  
  def cp000_todo
  end   
  
  def cp000_inprogress
  end     
  
  def cp000_done
  end   
  
  def cp001
  end   
  
  def cp002
  end   
  
  def cp003
  end 
  
  def ayuda
    
  end  
  
  
  #def show
   #    render "home/#{params[:id]}"
  #end
    
  
  # def distance loc1, loc2
  #   rad_per_deg = Math::PI/180  # PI / 180
  #   rkm = 6371                  # Earth radius in kilometers
  #   rm = rkm * 1000             # Radius in meters
  
  #   dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
  #   dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg
  
  #   lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
  #   lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }
  
  #   a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  #   c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))
  
  #   rm * c # Delta in meters
  # end
  
  # puts distance [46.3625, 15.114444],[46.055556, 14.508333]
  
  # => 57794.35510874037  

    
  
end
