class Solitweet.Models.Deputy extends Backbone.Model
  paramRoot: 'deputy'

  defaults:
    firstname: null
    surname: null
    description: null
    photo_url: null
    twitter_username: null
    political_party: null
    number_of_twitter_followers: null

class Solitweet.Collections.DeputiesCollection extends Backbone.Collection
  model: Solitweet.Models.Deputy
  url: '/deputies'
