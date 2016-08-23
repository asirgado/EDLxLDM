class Edl.Views.Detail extends Backbone.View
  template: JST['app/scripts/templates/detail.ejs']

  el: "#edl-content"

  setModel: (model) ->
    @model = model
    do @render

  render: ->
    @$el.html @template @model.toJSON()
