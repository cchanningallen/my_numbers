#= require models/workout

App.Components.WorkoutForm = React.createBackboneClass
  displayName: 'App.Components.WorkoutForm'

  propTypes: {
    model: React.PropTypes.instanceOf(App.Models.Workout).isRequired
    onSave: React.PropTypes.func.isRequired
  }

  handleChange: (e) ->
    {name, value} = e.target
    console.log "input changed... '#{name}: #{value}'"
    @getModel().set(name, value)

  activityOptions: ->
    for activity, i in App.activityOptions
      <option key={i} value={activity}>{activity}</option>

  render: ->
    { name, date } = @getModel().attributes

    <div className="workout-form">
      <label htmlFor="name">Name:</label>
      <input type="text" name="name" value={name} onChange={@handleChange} />

      <label htmlFor="name">Activity:</label>
      <select name="activity" onChange={@handleChange} value="" >
        { @activityOptions() }
      </select>

      <App.Components.SaveButton onSave={@props.onSave} />
    </div>
