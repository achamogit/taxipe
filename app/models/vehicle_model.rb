class VehicleModel < ActiveRecord::Base
  belongs_to :vehicle_brand
  has_many :vehicle
end
