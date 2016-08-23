window.Edl =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->

    # Initialize Programme collection
    Edl.programme = new Edl.Collections.Programme

    fetch = Edl.programme.fetch()

    fetch.success ->
      new Edl.Routers.Index
      do Backbone.history.start

$ ->
  do Edl.init
