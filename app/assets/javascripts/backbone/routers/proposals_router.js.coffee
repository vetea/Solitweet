class Solitweet.Routers.ProposalsRouter extends Backbone.Router
  initialize: (options) ->
    @proposals = new Solitweet.Collections.ProposalsCollection()
    @proposals.reset options.proposals

  routes:
    "new"      : "newProposal"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProposal: ->
    @view = new Solitweet.Views.Proposals.NewView(collection: @proposals)
    $("#proposals").html(@view.render().el)

  index: ->
    @view = new Solitweet.Views.Proposals.IndexView(proposals: @proposals)
    $("#proposals").html(@view.render().el)

  show: (id) ->
    proposal = @proposals.get(id)

    @view = new Solitweet.Views.Proposals.ShowView(model: proposal)
    $("#proposals").html(@view.render().el)

  edit: (id) ->
    proposal = @proposals.get(id)

    @view = new Solitweet.Views.Proposals.EditView(model: proposal)
    $("#proposals").html(@view.render().el)
