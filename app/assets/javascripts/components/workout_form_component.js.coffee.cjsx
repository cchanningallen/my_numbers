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

  handleAdd: (type) ->
    console.log("Clicked handleAdd: '#{type}' in workout form")

  activityOptions: ->
    for activity, i in App.activityOptions
      <option key={i} value={activity}>{activity}</option>

  render: ->
    { name, date, addActivity } = @getModel().attributes

    <form className="workout-form" role="form">
      <App.Components.WorkoutFormOneTimeInputs onChange={@handleChange}
      <App.Components.FormGroup name="name" label="Name:" onChange={@handleChange} />
      <App.Components.FormGroup name="date" label="Date:" onChange={@handleChange} />

      <label htmlFor="name">Name</label>
      <input type="text" name="name" value={name} onChange={@handleChange} />

      <label htmlFor="date">Date:</label>
      <input type="text" name="date" value={date} onChange={@handleChange} />

      <div className="workout-add-info-btns">
        <App.Components.AddActivityButton onClick={_.partial(@handleAdd, 'activity')} />
        <App.Components.AddAmrapButton onClick={_.partial(@handleAdd, 'amrap')} />
        <App.Components.AddRoundsButton onClick={_.partial(@handleAdd, 'rounds')} />
      </div>

      <App.Components.SaveButton onSave={@props.onSave} />
    </div>
