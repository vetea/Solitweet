Solitweet.Views.Influencers ||= {}

class Solitweet.Views.Influencers.IndexView extends Backbone.View
  template: JST["backbone/templates/influencers/index"]

  initialize: () ->
    @options.influencers.bind('reset', @addAll)

  addAll: () =>
    @options.influencers.each(@addOne)

  addOne: (influencer) =>
    view = new Solitweet.Views.Influencers.InfluencerView({model : influencer})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(influencers: @options.influencers.toJSON() ))
    @addAll()

    return this
