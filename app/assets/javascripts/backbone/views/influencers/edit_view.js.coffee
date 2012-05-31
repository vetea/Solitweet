Solitweet.Views.Influencers ||= {}

class Solitweet.Views.Influencers.EditView extends Backbone.View
  template : JST["backbone/templates/influencers/edit"]

  events :
    "submit #edit-influencer" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (influencer) =>
        @model = influencer
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
