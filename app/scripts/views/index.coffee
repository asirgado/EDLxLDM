class Edl.Views.Index extends Backbone.View
  tagName: "ul"
  className: "list-unstyled"

  initialize: ->
    @detail = new Edl.Views.Detail model: @collection.at 0
    do @detail.render

  setActive: (model) ->
    @detail.setModel model

    do @collection.resetActive
    model.set "active", yes

  openHour: (hour) ->
    @setActive @collection.getHour hour

  openTalk: (hour, talk) ->
    @openHour hour
    # model.getTalk talk

  render: ->
    @collection.each (hour) =>
      view = new Edl.Views.Hour model: hour
      @$el.append view.render()
    @
