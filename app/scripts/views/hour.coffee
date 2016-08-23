class Edl.Views.Hour extends Backbone.View

  className: "time-list-item"
  template: JST["app/scripts/templates/hour.ejs"]
  tagName: "li"

  initialize: ->
    @model.set "$viewEl", @$el

  render: ->
    @$el.html @template @model.toJSON()
