class Vehicle < ActiveRecord::Base
  belongs_to :vehicle_brand
  belongs_to :vehicle_model
  belongs_to :vehicle_type
  belongs_to :state
end
