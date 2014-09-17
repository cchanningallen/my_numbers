App.Components.Workout = React.createBackboneClass
  displayName: 'App.Components.Workout'

  handleRemove: ->
    console.log("removing workout")
    @getModel().destroy()

  render: ->
    { name, date } = @getModel().attributes

    <div className="workout row">
      <div className="col-sm-2">
        { date }
      </div>
      <div className="col-sm-8">
        { name }
      </div>
      <div className="col-sm-2">
        <App.Components.RemoveButton onRemove={@handleRemove} />
      </div>
    </div>
