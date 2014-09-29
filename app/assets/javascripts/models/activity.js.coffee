App.Models.Activity = Backbone.Model.extend
  defaults: {
    name: App.activityOptions[0]
  }

  initialize: ->
    @on('change', @logChange, @)

  logChange: (model) ->
    console.log("Attributes updated on Activity model #{@cid}:")
    console.log(model.changed)
