App.Collections.ActivityCollector = Backbone.Collection.extend
  url: '/workouts'

  model: (attrs, options) ->
    # Logic for adding both Activities and other ActivityCollectors.
    # Logic for creating / updating analytics objects.

  initialize: ->
    @on('add', @logAdd, @)

  logAdd: (model) ->
    console.log("Model added to collection:")
    console.log(model)
