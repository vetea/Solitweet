Solitweet.Views.Deputies ||= {}

class Solitweet.Views.Deputies.ShowView extends Backbone.View
  template: JST["backbone/templates/deputies/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
