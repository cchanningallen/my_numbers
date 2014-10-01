class WorkoutsController < ApplicationController
  expose(:workouts)
  expose(:workout)

  expose(:activity_options) { Workout::ACTIVITY_OPTIONS }

  expose(:data_point_category_options) { ActivityType::DATA_POINT_CATEGORY_OPTIONS }
end
