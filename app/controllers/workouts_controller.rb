class WorkoutsController < ApplicationController
  expose(:workout)

  expose(:activity_options) { Workout::ACTIVITY_OPTIONS }
end
