App.Components.RemoveButton = React.createBackboneClass
  displayName: 'App.Components.RemoveButton'

  propTypes: {
    onRemove: React.PropTypes.func.isRequired
  }

  render: ->
    {onRemove} = @props

    <App.Components.Button onClick={onRemove}" ref="remove" iconType="remove" />
