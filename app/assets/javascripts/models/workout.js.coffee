App.Models.Workout = Backbone.Model.extend
  defaults: {
    name: "Baller Workout"
    date: new Date()
  }

  urlRoot: "/workouts"

  initialize: ->
    @on('change', @logChange, @)

  logChange: (model) ->
    console.log("Attributes updated on Workout model #{@cid}:")
    console.log(model.changed)
