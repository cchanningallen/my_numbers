class Activity < ActiveRecord::Base
  belongs_to :collector

  ACTIVITY_TYPES = YAML.load_file('config/activities.yml')['types'].sort_by(:&downcase)
end
