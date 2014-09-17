class Workout < ActiveRecord::Base
  ACTIVITY_OPTIONS = YAML.load_file('config/activities.yml')['types']
end
