class Workout < ActiveRecord::Base
  ACTIVITY_OPTIONS = YAML.load_file('config/activities.yml')['types']

  has_many :activity_groups
  has_many :activities, :through => :activity_groups

  # TODO: make this performant. Throwaway code for now to get
  # functionality working.
  def self.nested_all
    self.all.each_with_object
  end

  def self.find_with_children(id)

  end

  def self.new_with_children(workout_data)
    activity_groups = workout_data.delete(:activity_groups)

    self.new(workout_data).tap do |workout|
      activity_groups.each do |activity_group_data|
        activities = activity_group_data.delete(:activities)
        activity_group = workout.activity_groups.build(activity_group_data)

        activities.each do |activity_data|
          activity_group.activities.build(activity_data)
        end
      end
    end
  end

  def with_children
    self.base_attributes.merge(
      activity_groups: self.activity_groups.map do |activity_group|
        activity_group.base_attributes.merge(
          activities: activity_group.activities.map(&:base_attributes)
        )
      end
    )
  end
end
