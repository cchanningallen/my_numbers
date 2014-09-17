App.Components.Button = React.createBackboneClass
  displayName: 'App.Components.Button'

  propTypes: {
    onClick: React.PropTypes.func.isRequired
    ref: React.PropTypes.string.isRequired
    text: React.PropTypes.string
    classes: React.PropTypes.string
    iconType: React.PropTypes.string
  }

  render: ->
    {onClick, text, classes, ref, iconType} = @props

    <a className="#{classes}" onClick={onClick} ref="{ref}">
      { <span className="glyphicon glyphicon-#{iconType}"></span> if iconType }
      {text}
    </a>
