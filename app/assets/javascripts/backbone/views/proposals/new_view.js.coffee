Solitweet.Views.Proposals ||= {}

class Solitweet.Views.Proposals.NewView extends Backbone.View
  template: JST["backbone/templates/proposals/new"]

  events:
    "submit #new-proposal": "save"

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
      success: (proposal) =>
        @model = proposal
        window.location.hash = "/#{@model.id}"

      error: (proposal, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
