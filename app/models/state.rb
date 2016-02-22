class State < ActiveRecord::Base
    has_many :profile
    has_many :modulo
    has_many :vehicle
    has_many :users
    has_many :drivers
    has_many :Locality
end
