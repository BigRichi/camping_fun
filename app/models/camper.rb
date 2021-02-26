class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups 


    def name_age_and_actiities
        name.titleize + " #{age} years old, #{activities.map(&:name)}"
    end

end
