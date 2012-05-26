Solitweet.Views.Proposals ||= {}

class Solitweet.Views.Proposals.ShowView extends Backbone.View
  template: JST["backbone/templates/proposals/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
