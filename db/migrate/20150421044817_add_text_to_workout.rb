class AddTextToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :text, :string
  end
end
