class Workout < ActiveRecord::Base
  ACTIVITY_OPTIONS = YAML.load_file('config/activities.yml')['types']

  has_many :activity_groups
  has_many :activities, though: :activity_groups

  def self.nested_all

  end

  def self.find_with_nested(id)

  end
end
