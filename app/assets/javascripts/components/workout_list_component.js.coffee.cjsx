#= require collections/workout_list

App.Components.WorkoutList = React.createBackboneClass
  displayName: 'App.Components.WorkoutList'

  workoutComponents: ->
    workoutList = @getCollection()

    if workoutList.isEmpty()
      <h4>No workouts exist.</h4>
    else
      workoutList.map( (workoutModel) ->
        <App.Components.Workout key={workoutModel.cid} model={workoutModel} />
      )

  render: ->
    <div className="workout-list">
      { @workoutComponents() }
    </div>
