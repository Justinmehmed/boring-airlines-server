class Flight < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :airplanes, :optional => true
    has_many :reservations

end
