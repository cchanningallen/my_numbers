class WorkoutsController < ApplicationController
  expose(:workouts)
  expose(:workout)

  expose(:activity_options) { Workout::ACTIVITY_OPTIONS }
end
