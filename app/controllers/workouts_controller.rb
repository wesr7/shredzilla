class WorkoutsController < ApplicationController

    def index
        @workout = Exercise.where("workout_id = 1", params[:workout] )
    end

end

