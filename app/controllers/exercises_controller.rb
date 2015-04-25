class ExercisesController < ApplicationController

    def create
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(exercises_params)
        if @exercise
            redirect_to(workout_path(@workout))
        else
            render(workout_path(@workout))
    end
end

def destroy
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    if @exercise.destroy
        redirect_to(workout_path(@workout))
    else
        flash.now[:error] = "Could not delete exercise!"
    end
end


    private

    def exercises_params
        params.require(:exercise).permit(:name, :reps, :sets, :timer, :hold)
    end

end

