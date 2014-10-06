ACTIVITY_TYPE_DATA = YAML.load_file('config/activities.yml')

def create_activity_types
  ACTIVITY_TYPE_DATA.each do |type, attributes|
    activity_type = ActivityType.new(attributes.merge(name: type))
    puts activity_type.save
  end
end

create_activity_types

pull_up_activity_type = ActivityType.find_by(name: "pull-up")
thruster_activity_type = ActivityType.find_by(name: "thruster")

workout_data = [
  {
    name: "Fran",
    date: Date.today,
    notes: "felt good!",
    scoreType: "time",
    score: "5:26",
    activity_groups: [
      {
        type: "rounds",
        quantity: "3",
        change: "decreasing",
        change_quantity: 6,
        order: 1,
        activities: [
          {
            activity_type_id: thruster_activity_type.id,
            quantity: 21,
            unit: "reps",
            weight: 75,
            order: 1,
          },
          {
            activity_type_id: pull_up_activity_type.id,
            mod: "kipping",
            quantity: 21,
            unit: "reps",
            order: 2,
          },
        ],
      },
    ],
  },
]

def create_workouts(workout_data)
  workout_data.each do |data|
    p "Building new workout for hash:"
    p data

    workout = Workout.new_with_children(data)

    p "Saving workout..."
    p workout.save
  end
end

create_workouts(workout_data)
