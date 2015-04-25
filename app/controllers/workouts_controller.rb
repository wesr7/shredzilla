class WorkoutsController < ApplicationController

  def index
    @workout = Workout.all
  end

 def show
    @workout = Workout.find(params[:id])
    @exercise = Exercise.new
    @exercises = @workout.exercises
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user = current_user
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render "new"
  end
end

def edit
  @workout = Workout.find(params[:id])
  @exercise = Exercise.find(params[:id])

end


  def update
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(workout_params)
    redirect_to workout_path
  else
    render '/'
  end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @exercises = Exercise.find(params[:id])
    if @workout.destroy
    redirect_to workouts_path
  else
      redirect_to workout_path
    end
  end



     private
     def workout_params
      params.require(:workout).permit(:note, :name)
    end


  end



