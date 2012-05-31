class Solitweet.Routers.InfluencersRouter extends Backbone.Router
  initialize: (options) ->
    @influencers = new Solitweet.Collections.InfluencersCollection()
    @influencers.reset options.influencers

  routes:
    "new"      : "newInfluencer"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newInfluencer: ->
    @view = new Solitweet.Views.Influencers.NewView(collection: @influencers)
    $("#influencers").html(@view.render().el)

  index: ->
    @view = new Solitweet.Views.Influencers.IndexView(influencers: @influencers)
    $("#influencers").html(@view.render().el)

  show: (id) ->
    influencer = @influencers.get(id)

    @view = new Solitweet.Views.Influencers.ShowView(model: influencer)
    $("#influencers").html(@view.render().el)

  edit: (id) ->
    influencer = @influencers.get(id)

    @view = new Solitweet.Views.Influencers.EditView(model: influencer)
    $("#influencers").html(@view.render().el)
