Solitweet.Views.Proposals ||= {}

class Solitweet.Views.Proposals.ProposalView extends Backbone.View
  template: JST["backbone/templates/proposals/proposal"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
