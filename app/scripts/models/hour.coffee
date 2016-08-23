class Edl.Models.Hour extends Backbone.Model

  initialize: ->
    @on "change:active", @setActive

  setActive: ->
    @get("$viewEl").toggleClass "active", @get "active"

  getConferences: ->
    @get "conferences"

  getTalk: (slug) ->
    _.filter @getConferences(), (conference) ->
      conference.talk.slug is slug
