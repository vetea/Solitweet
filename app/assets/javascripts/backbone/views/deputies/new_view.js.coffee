Solitweet.Views.Deputies ||= {}

class Solitweet.Views.Deputies.NewView extends Backbone.View
  template: JST["backbone/templates/deputies/new"]

  events:
    "submit #new-deputy": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (deputy) =>
        @model = deputy
        window.location.hash = "/#{@model.id}"

      error: (deputy, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
