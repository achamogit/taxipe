class State < ActiveRecord::Base
    has_many :profile
    has_many :modulo
    has_many :vehicle
end
