MyNumbers::Application.routes.draw do
  # Sends all non-JSON requests to workouts#index for Backbone's
  # router to handle.
  class XHRConstraint
    def matches?(request)
      !request.xhr? && !(request.url =~ /\.json$/ && ::Rails.env == 'development')
    end
  end

  get '(*url)' => 'workouts#index', :constraints => XHRConstraint.new

  mount Workouts::API => '/'

end
