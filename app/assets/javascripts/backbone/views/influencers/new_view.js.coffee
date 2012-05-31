Solitweet.Views.Influencers ||= {}

class Solitweet.Views.Influencers.NewView extends Backbone.View
  template: JST["backbone/templates/influencers/new"]

  events:
    "submit #new-influencer": "save"

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
      success: (influencer) =>
        @model = influencer
        window.location.hash = "/#{@model.id}"

      error: (influencer, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
