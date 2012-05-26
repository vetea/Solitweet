class Solitweet.Routers.DeputiesRouter extends Backbone.Router
  initialize: (options) ->
    @deputies = new Solitweet.Collections.DeputiesCollection()
    @deputies.reset options.deputies

  routes:
    "new"      : "newDeputy"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newDeputy: ->
    @view = new Solitweet.Views.Deputies.NewView(collection: @deputies)
    $("#deputies").html(@view.render().el)

  index: ->
    @view = new Solitweet.Views.Deputies.IndexView(deputies: @deputies)
    $("#deputies").html(@view.render().el)

  show: (id) ->
    deputy = @deputies.get(id)

    @view = new Solitweet.Views.Deputies.ShowView(model: deputy)
    $("#deputies").html(@view.render().el)

  edit: (id) ->
    deputy = @deputies.get(id)

    @view = new Solitweet.Views.Deputies.EditView(model: deputy)
    $("#deputies").html(@view.render().el)
