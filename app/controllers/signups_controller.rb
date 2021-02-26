class SignupsController < ApplicationController

    def new
        @signups = Signup.new
        @activities = Activity.all
        @campers = Camper.all
    end

    

end
