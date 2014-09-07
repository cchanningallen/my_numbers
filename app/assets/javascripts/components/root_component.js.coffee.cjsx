#= require models/root

App.Components.Root = React.createBackboneClass
  someShit: ->
    model = @getModel

  addWorkout: ->
    @props.router.navigate('new', {trigger: true})

  viewFocus: ->
    { view, workoutList } = @getModel().attributes

    switch view
      when 'main' then <App.Components.WorkoutList collection={workoutList} addWorkout={@addWorkout} />
      when 'new' then <App.Components.NewWorkout />

  render: ->
    <div>
      <h2>Welcome to the MVP Workout Tracker!</h2>
      {@viewFocus()}
    </div>
