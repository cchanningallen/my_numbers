# attributes:
#   workoutList: collection of workouts

App.Models.Root = Backbone.Model.extend
  defaults: {
    view: "main"
  }

  initialize: ->
    @resetNewWorkoutModel()

  resetNewWorkoutModel: ->
    @set('newWorkout', new App.Models.Workout())
