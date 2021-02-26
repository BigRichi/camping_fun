class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
    end

    def new
        @activity = Activity.new
    end

    def create
        activity_params = params.require(:activity).permit(:name, :difficulty)
        new_activity = Activity.create(activity_params)
        redirect_to activity_path(new_activity)
    end

    def show 
        @activity = Actiity.find(params[:id])
        @activities = @activity.campers
    end
    
    def edit
        @activity = Activity.find(params[:id])
    end


    
end
