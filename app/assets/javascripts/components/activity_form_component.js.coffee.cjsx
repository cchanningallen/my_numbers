#= require models/workout

App.Components.ActivityForm = React.createBackboneClass
  displayName: 'App.Components.ActivityForm'

  propTypes: {
    model: React.PropTypes.instanceOf(App.Models.Activity).isRequired
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

    <div className="activity-form">
      <label htmlFor="name">Activity:</label>
      <select name="activity" onChange={@handleChange} value="" >
        { @activityOptions() }
      </select>
    </div>
