App.Components.Button = React.createBackboneClass
  displayName: 'App.Components.Button'

  propTypes: {
    onClick: React.PropTypes.func.isRequired
    ref: React.PropTypes.string.isRequired
    text: React.PropTypes.string
    classes: React.PropTypes.string
    iconType: React.PropTypes.string
    iconPos: React.PropTypes.string
  }

  test: ->

  render: ->
    {onClick, text, classes, ref, iconType, iconPos} = @props

    <a className="#{classes}" onClick={onClick} ref="{ref}">
      { <span className="glyphicon glyphicon-#{iconType}"></span> if iconType and iconPos isnt 'right' }
      {text}
      { <span className="glyphicon glyphicon-#{iconType}"></span> if iconType and iconPos is 'right' }
    </a>
