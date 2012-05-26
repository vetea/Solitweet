class Solitweet.Models.Proposal extends Backbone.Model
  paramRoot: 'proposal'

  defaults:
    title: null
    content: null

class Solitweet.Collections.ProposalsCollection extends Backbone.Collection
  model: Solitweet.Models.Proposal
  url: '/proposals'
