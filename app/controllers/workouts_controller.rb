class WorkoutsController < ApplicationController

    def index
        @workout = Exercise.where("workout_id = 1", params[:workout])
        @workout_id = @workout.first.workout.id
    end

    def new
    @workout = Exercise.where("workout_id = 1", params[:workout])
    @workout_id = @workout.first.workout.id
  end

  def show
    @workout = Exercise.where("workout_id = 1", params[:workout])
        @workout_id = @workout.first.workout.id
  end


     def create
        @workout = Workout.new(params[:note])
        if @workout.save
          redirect_to user_workouts_path
      else
          render "new"
      end
  end

  def update
    workout = Workout.find(params[:workout_id])
    workout_note = params[:note]
    if workout.save
        redirect_to 'show'
    else
         # add error message/validation of some sort
    render new_user_workouts_path
        end
    end


  #     def update
  #   @workout = Workout.find(params[:id])

  #   if @workout.update(params[:note])
  #     redirect_to @workout
  #   else
  #     render 'edit'
  #   end
  # end

end

