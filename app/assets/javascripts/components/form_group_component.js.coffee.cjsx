#= require models/workout

App.Components.FormGroup = React.createBackboneClass
  displayName: 'App.Components.FormGroup'

  propTypes: {
    onChange: React.PropTypes.func.isRequired
    name: React.PropTypes.string.isRequired
    cid: React.PropTypes.string.isRequired
    labelText: React.PropTypes.string
    classes: React.PropTypes.string
    value: React.PropTypes.renderable
    placeholder: React.PropTypes.renderable
  }

  getDefaultProps: ->
    labelText: _.capitalize(name)

  render: ->
    {onChange, name, label, classes} = @props

    <div className="form-group #{classes}">
      <label htmlFor={name}>{labelText}</label>
      <input type="text" name={name} className="form-control" value={value}>
    </div>
