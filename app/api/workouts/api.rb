module Workouts
  class API < Grape::API
    version 'v1', using: :header, vendor: 'Channing Allen'
    format :json

    resource :workouts do
      desc "Return a user's workouts.  TODO: send in batches"
      get do
        Workout.all
      end

      desc "Return a workout."
      params do
        requires :id, type: Integer, desc: "Workout id."
      end
      route_param :id do
        get do
          Workout.find(params[:id])
        end
      end

      desc "Create a workout."
      params do
        requires :name
        requires :date
      end
      post do
        # authenticate!
        Workout.create!({
          name: params[:name],
          date: params[:date]
        })
      end

      desc "Update a workout."
      params do
        requires :id, type: Integer, desc: "Workout ID."
        requires :workout, type: String, desc: "Your workout."
      end
      put ':id' do
        Workout.find(params[:id]).update(params[:workout])
      end

      desc "Delete a workout."
      params do
        requires :id, type: Integer, desc: "Workout ID."
      end
      delete ':id' do
        Workout.find(params[:id]).destroy
      end
    end
  end
end
