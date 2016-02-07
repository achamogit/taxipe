class HomeController < ApplicationController
  #layout 'internal'

  def index
  end
  
  def geoget
  end
  
  def rutas
  end
  
  def protipo1
  end  
  
  def cp000
  end 
  
  def cp001
  end   
  
  def cp002
  end   
  
  def cp003
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
