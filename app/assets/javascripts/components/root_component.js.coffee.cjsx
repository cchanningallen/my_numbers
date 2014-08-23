App.Components.Root = React.createBackboneClass
  # getDefaultProps: ->
  #   { model:  }

  render: ->
    <div>
      <h2>Welcome to the MVP Workout Tracker!</h2>
      <App.Components.WorkoutList />
      <a href="" className="btn btn-default">Add Workout</a>
    </div>
