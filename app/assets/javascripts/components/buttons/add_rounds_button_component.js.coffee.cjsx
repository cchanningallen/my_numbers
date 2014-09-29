App.Components.AddRoundsButton = React.createBackboneClass
  displayName: 'App.Components.AddRoundsButton'

  propTypes: {
    onClick: React.PropTypes.func.isRequired
  }

  render: ->
    {onClick} = @props

    <App.Components.Button text="Rounds" iconType="plus" onClick={onClick} classes="btn btn-primary" ref="addRounds" />
