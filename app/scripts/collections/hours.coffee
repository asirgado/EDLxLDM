class Edl.Collections.Programme extends Backbone.Collection
  model: Edl.Models.Hour
  url: "/data/programme.json"

  resetActive: ->
    @each (m) -> m.set "active", no

  getHour: (hour) ->
    this.findWhere { time: "2014-11-13T#{hour}:00+00:00" }
