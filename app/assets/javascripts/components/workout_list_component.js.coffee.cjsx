#= require collections/workout_list

App.Components.WorkoutList = React.createBackboneClass
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
      <input className="btn btn-default" type="button" value="Add Workout" onClick={@props.addWorkout} />
    </div>
