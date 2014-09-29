App.Components.AddAmrapButton = React.createBackboneClass
  displayName: 'App.Components.AddAmrapButton'

  propTypes: {
    onClick: React.PropTypes.func.isRequired
  }

  render: ->
    {onClick} = @props

    <App.Components.Button text="Amrap" iconType="plus" onClick={onClick} classes="btn btn-primary" ref="addAmrap" />
