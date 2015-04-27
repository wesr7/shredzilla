class ExercisesController < ApplicationController

    def create
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(exercises_params)
           @workout.user = current_user
        if @exercise.save
            redirect_to edit_workout_path(@workout)
        else
            render workout_path(@workout)
    end
end

def edit
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    @workout.user = current_user
end

def update
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    @workout.user = current_user
    if @exercise.update(exercises_params)
        redirect_to edit_workout_path(@workout)
    else
        flash.now[:error] = "Could not update exercise"
 end
end


def destroy
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    if @exercise.destroy
        redirect_to edit_workout_path(@workout)
    else
        flash.now[:error] = "Could not delete exercise!"
    end
end


    private

    def exercises_params
        params.require(:exercise).permit(:name, :reps, :sets, :timer, :hold)
    end

end

