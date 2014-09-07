App.Router = Backbone.Router.extend
  initialize: (rootModel) ->
    @root = rootModel

  routes:
    "":       "root"
    "new":    "new"

  root: ->
    @root.set(view: 'main')

  new: ->
    @root.set(view: 'new')
