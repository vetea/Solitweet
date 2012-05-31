class Solitweet.Models.Influencer extends Backbone.Model
  paramRoot: 'influencer'

  defaults:
    firstname: null
    surname: null
    photo_url: null
    twitter_username: null

class Solitweet.Collections.InfluencersCollection extends Backbone.Collection
  model: Solitweet.Models.Influencer
  url: '/influencers'
