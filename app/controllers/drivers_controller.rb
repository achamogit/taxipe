class DriversController < InheritedResources::Base
  layout 'internal'
  private

    def driver_params
      params.require(:driver).permit(:firstname, :lastname, :age, :datebirthday, :document, :license, :yearexperience, :phone, :state_id, :rating, :image)
    end
end

