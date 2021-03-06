class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def new
        @camper = Camper.new
    end

    def create
        camper_params = params.require(camper).permit(:name, :age)
        new_camper = Camper.create(camper_params)
        redirect_to camper_path(new_camper)
    end

    def show
        @camper = Camper.find(params[:id])
        @activities = @camper.activities
    end

    def edit
        @camper = Camper.find(params[:id])
    end


end
