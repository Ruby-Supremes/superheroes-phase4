class Hero < ApplicationRecord
    has_many :Powers, through: :HeroPower           
    end
end
