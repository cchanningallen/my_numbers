App.Components.AddButton = React.createBackboneClass
  displayName: 'App.Components.AddButton'

  propTypes: {
    onAdd: React.PropTypes.func.isRequired
    text: React.PropTypes.string
  }

  render: ->
    {onAdd, text} = @props

    <App.Components.Button text={text || "Add"} onClick={onAdd} classes="btn btn-default" ref="add" iconType="plus" />
