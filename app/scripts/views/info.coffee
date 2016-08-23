class Edl.Views.Info extends Backbone.View
  template: JST['app/scripts/templates/info.ejs']

  el: "#edl-content"

  initialize: ->
    do @render

  render: ->
    @$el.html @template()
