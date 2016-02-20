class VehicleBrand < ActiveRecord::Base
    has_many :vehicle_model
    has_many :vehicle
end
