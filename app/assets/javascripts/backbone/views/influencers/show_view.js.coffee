Solitweet.Views.Influencers ||= {}

class Solitweet.Views.Influencers.ShowView extends Backbone.View
  template: JST["backbone/templates/influencers/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
