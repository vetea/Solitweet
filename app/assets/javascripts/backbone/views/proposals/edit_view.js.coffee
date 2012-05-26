Solitweet.Views.Proposals ||= {}

class Solitweet.Views.Proposals.EditView extends Backbone.View
  template : JST["backbone/templates/proposals/edit"]

  events :
    "submit #edit-proposal" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (proposal) =>
        @model = proposal
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
