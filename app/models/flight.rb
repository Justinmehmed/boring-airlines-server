class Flight < ApplicationRecord
    belongs_to :user, :optional => true
end
