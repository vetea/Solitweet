Solitweet.Views.Proposals ||= {}

class Solitweet.Views.Proposals.IndexView extends Backbone.View
  template: JST["backbone/templates/proposals/index"]

  initialize: () ->
    @options.proposals.bind('reset', @addAll)

  addAll: () =>
    @options.proposals.each(@addOne)

  addOne: (proposal) =>
    view = new Solitweet.Views.Proposals.ProposalView({model : proposal})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(proposals: @options.proposals.toJSON() ))
    @addAll()

    return this
