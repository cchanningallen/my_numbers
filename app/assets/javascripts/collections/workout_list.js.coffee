App.Collections.WorkoutList = Backbone.Collection.extend
  model: App.Models.Workout
  url: '/workouts'

  initialize: ->
    @on('add', @logAdd, @)

  logAdd: (model) ->
    console.log("Model added to collection:")
    console.log(model)
