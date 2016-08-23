class Edl.Routers.Index extends Backbone.Router

  routes:
    "": "index"
    "info": "information"
    "opening": "opening"
    "registration": "registration"
    ":hour": "openHour"
    ":hour/:talk": "openTalk"

  initialize: ->
    Edl.indexView = new Edl.Views.Index collection: Edl.programme
    $("#edl-programme").html Edl.indexView.render().el

  openingClass: ->
    $(".detail-container").removeClass "opening-content"

  index: ->
    do @openingClass
    first = Edl.programme.at(1).get "time"
    this.openHour moment(first).format "HH:mm"

  openHour: (hour) ->
    do @openingClass
    return @navigate "registration", { trigger: yes } if hour is "09:00"
    return @navigate "opening", { trigger: yes } if hour is "09:30"
    Edl.indexView.openHour hour

  openTalk: (hour, talk) ->
    do @openingClass
    Edl.indexView.openTalk hour, talk

  information: ->
    do @openingClass
    new Edl.Views.Info

  registration: ->
    do @openingClass
    new Edl.Views.Registration
    model = Edl.indexView.collection.getHour "09:00"
    do Edl.indexView.collection.resetActive
    model.set "active", yes

  opening: ->
    new Edl.Views.Opening
    model = Edl.indexView.collection.getHour "09:30"
    do Edl.indexView.collection.resetActive
    $(".detail-container").addClass "opening-content"
    model.set "active", yes
