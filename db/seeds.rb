# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
workout_1 = Workout.create(
    name: "Monday",
    day: 1,
    text: nil,
    note: nil,
    )

workout_2 = Workout.create(
    name: "Tuesday",
    day: 2,
    text: nil,
    note: nil,

    )

Exercise.create(
    name: "Squat",
    hold: "1 sec",
    reps: "20",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Squat",
    hold: "30 sec",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Push Up",
    hold: "1 sec",
    reps: "10",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Push Up",
    hold: "15 sec*",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Side Bridge",
    hold: "30 sec*",
    reps: "1 R/L",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Front Bridge",
    hold: "30 sec*",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Y",
    hold: "15 sec*",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Reverse Lunge - Right Leg",
    hold: "15 sec*",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Reverse Lunge",
    hold: "1 sec",
    reps: "10 R/L",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Reverse Lunge - Left Leg",
    hold: "15 sec*",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Glute Bridge",
    hold: "1",
    reps: "20",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "Hollow Sit",
    hold: "15 sec",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "V-Up",
    hold: "X",
    reps: "10",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )

Exercise.create(
    name: "W",
    hold: "15 sec",
    reps: "1",
    sets: "4",
    timer: ":30 Rest Between Sets",

    )
