class Edl.Views.Registration extends Backbone.View
  template: JST['app/scripts/templates/registration.ejs']

  el: "#edl-content"

  initialize: ->
    do @render

  render: ->
    @$el.html @template()
