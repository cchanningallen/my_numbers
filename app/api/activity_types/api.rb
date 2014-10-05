module ActivityTypes
  class API < Grape::API
    version 'v1', using: :header, vendor: 'Channing Allen'
    format :json

    resource :activity_types do
      desc "Return all activity_types."
      get do
        ActivityType.all
      end

      desc "Return a activity_type."
      params do
        requires :id, type: Integer, desc: "ActivityType id."
      end
      route_param :id do
        get do
          ActivityType.find(params[:id])
        end
      end

      desc "Create a activity_type."
      params do
        requires :name
        requires :mod_options
        requires :categories
      end
      post do
        # authenticate!
        ActivityType.create!({
          name: params[:name],
          mod_options: params[:mod_options],
          categories: params[:categories]
        })
      end

      desc "Update a activity_type."
      params do
        requires :id, type: Integer, desc: "ActivityType ID."
        requires :activity_type, type: String, desc: "Your activity_type."
      end
      put ':id' do
        ActivityType.find(params[:id]).update(params[:activity_type])
      end

      desc "Delete a activity_type."
      params do
        requires :id, type: Integer, desc: "ActivityType ID."
      end
      delete ':id' do
        ActivityType.find(params[:id]).destroy
      end
    end
  end
end
