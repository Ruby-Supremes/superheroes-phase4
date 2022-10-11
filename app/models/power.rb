class Power < ApplicationRecord
    has_many :Heroes, through: :HeroPower  


end    