###
@todo
###

require './style'

module.exports = React.createClass

  # -- States & Properties
  propTypes:
    type        : React.PropTypes.string
    dataSource  : React.PropTypes.Array
    ItemFactory : React.PropTypes.func
    onClick     : React.PropTypes.func

  getDefaultProps: ->
    type        : "default"
    dataSource  : []

  # -- Events
  onClick: (event, item) ->
    @props.onClick? event, item

  # -- Render
  render: ->
    <ul data-component-list={@props.type}>
    {
      for item, index in @props.dataSource
        <li key={index} onClick={@onClick.bind null, item}>
          {@props.itemFactory item}
        </li>
    }
    </ul>
