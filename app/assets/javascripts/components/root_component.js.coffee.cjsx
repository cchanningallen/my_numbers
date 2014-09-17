#= require models/root

App.Components.Root = React.createBackboneClass
  displayName: 'App.Components.Root'

  propTypes: {
    model: React.PropTypes.instanceOf(App.Models.Root).isRequired
    router: React.PropTypes.instanceOf(App.Router).isRequired
  }

  changeView: (newView) ->
    @props.router.navigate(newView, {trigger: true})

  handleSaveNew: (model, workoutList) ->
    console.log "calling handleSaveNew"
    { newWorkout } = model.attributes

    if newWorkout.save()
      console.log "new workout saved!"
      workoutList.add(newWorkout)
      model.resetNewWorkoutModel()
      @changeView('')
    else
      console.log "new workout didn't save! chappin my ass..."

  viewFocus: ->
    root = @getModel()
    { view, workoutList, newWorkout } = root.attributes

    switch view
      when 'main'
        <div className="main-view-wrapper">
          <App.Components.WorkoutList collection={workoutList} />
          <App.Components.AddButton text="Add Workout" onAdd={_.partial(@changeView, 'new')} />
        </div>
      when 'new'
        <App.Components.WorkoutForm model={newWorkout} onSave={_.partial(@handleSaveNew, root, workoutList)} />

  render: ->
    <div>
      <h2>Welcome to the MVP Workout Tracker!</h2>
      {@viewFocus()}
    </div>
