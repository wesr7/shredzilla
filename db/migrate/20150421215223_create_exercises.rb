class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :hold
      t.string :reps
      t.string :sets
      t.string :timer
      t.references :workout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
