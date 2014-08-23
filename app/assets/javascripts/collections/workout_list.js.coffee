App.Collections.WorkoutList = Backbone.Collection.extend
  model: App.Models.Workout
  url: '/workouts'
