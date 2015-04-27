class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end


  def new
    @workout = Workout.new
  end

  def edit
  @workout = Workout.find(params[:id])
  @exercise = Exercise.new
  @workout.user = current_user
  @exercises = @workout.exercises
end

  def create
    @workout = Workout.new(workouts_params)
    @workout.user = current_user
    if @workout.save
      redirect_to edit_workout_path(@workout)
    else
      render "new"
  end
end

def show
    @workout = Workout.find(params[:id])
    @exercise = Exercise.new
    @exercises = @workout.exercises
  end


  def update
    @workout = Workout.find(params[:id])
    @workout.user = current_user
    if @workout.update(workouts_params)
    redirect_to edit_workout_path(@workout)
  else
    render workouts_path
  end
  end

  def destroy
    @workout = Workout.find(params[:id])

    if @workout.destroy
    redirect_to workouts_path
  else
      redirect_to workout_path(@workout)
    end
  end



     private
     def workouts_params
      params.require(:workout).permit(:note, :name)
    end


  end



