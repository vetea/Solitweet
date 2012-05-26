Solitweet.Views.Deputies ||= {}

class Solitweet.Views.Deputies.EditView extends Backbone.View
  template : JST["backbone/templates/deputies/edit"]

  events :
    "submit #edit-deputy" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (deputy) =>
        @model = deputy
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
