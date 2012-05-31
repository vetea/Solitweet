Solitweet.Views.Influencers ||= {}

class Solitweet.Views.Influencers.InfluencerView extends Backbone.View
  template: JST["backbone/templates/influencers/influencer"]

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
