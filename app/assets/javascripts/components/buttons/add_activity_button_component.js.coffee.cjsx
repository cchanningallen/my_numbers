App.Components.AddActivityButton = React.createBackboneClass
  displayName: 'App.Components.AddActivityButton'

  propTypes: {
    onClick: React.PropTypes.func.isRequired
  }

  render: ->
    {onClick} = @props

    <App.Components.Button text="Activity" iconType="plus" onClick={onClick} classes="btn btn-primary" ref="addActivity" />
