class Edl.Views.Opening extends Backbone.View
  template: JST['app/scripts/templates/opening.ejs']

  el: "#edl-content"

  initialize: ->
    do @render

  render: ->
    @$el.html @template()
