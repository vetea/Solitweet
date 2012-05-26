Solitweet.Views.Deputies ||= {}

class Solitweet.Views.Deputies.IndexView extends Backbone.View
  template: JST["backbone/templates/deputies/index"]

  initialize: () ->
    @options.deputies.bind('reset', @addAll)

  addAll: () =>
    @options.deputies.each(@addOne)

  addOne: (deputy) =>
    view = new Solitweet.Views.Deputies.DeputyView({model : deputy})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(deputies: @options.deputies.toJSON() ))
    @addAll()

    return this
