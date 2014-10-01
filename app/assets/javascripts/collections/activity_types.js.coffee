App.Collections.ActivityTypes = Backbone.Collection.extend
  model: App.Models.ActivityType
  url: '/activity_types'

  initialize: ->
    @on('add', @logAdd, @)

  logAdd: (model) ->
    console.log("Model added to collection:")
    console.log(model)
