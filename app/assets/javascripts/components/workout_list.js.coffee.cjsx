#= require collections/workout_list

App.Components.WorkoutList = React.createBackboneClass
  mixins: [
    React.BackboneMixin(modelOrCollection: (props) -> props.workouts)
  ]

  getDefaultProps: ->
    console.log("got to App.Components.WorkoutList")
    workouts = new App.Collections.WorkoutList()
    workouts.sync
    { workouts: workouts }

  render: ->
    { workouts } = @props

    if workouts.isEmpty()
      <h4>No workouts exist.</h4>
    else
      workouts.map((workoutModel) ->
        <App.Components.Workout key={workoutModel.cid} model={workoutModel} />
      )
