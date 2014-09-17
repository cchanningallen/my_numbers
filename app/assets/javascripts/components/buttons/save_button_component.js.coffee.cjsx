App.Components.SaveButton = React.createBackboneClass
  displayName: 'App.Components.SaveButton'

  propTypes: {
    onSave: React.PropTypes.func.isRequired
    text: React.PropTypes.string
    wrapperClasses: React.PropTypes.string
  }

  render: ->
    {onSave, text, wrapperClasses} = @props

    <div className={wrapperClasses}>
      <App.Components.Button text={text || "Save"} onClick={onSave} classes="btn btn-primary" ref="save" />
    </div>
