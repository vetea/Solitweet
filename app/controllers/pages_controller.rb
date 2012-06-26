class PagesController < ApplicationController
  before_filter :authenticate_http_admin, :only => [:admin]
  
  def home
    @proposals = Proposal.all
  end

  def deputies
    require 'uri'

    @deputies = Deputy.all
    @twitter_message = URI.escape Proposal.find(params[:proposal_id]).twitter_message
  end

  def thanks
    require 'uri'
    
    @influencers = Influencer.all
    @twitter_message = URI.escape Proposal.find(params[:proposal_id]).twitter_message

    if params[:type] == "politicien"
      sent_message = SentMessage.find_or_create_by_deputy_id_and_proposal_id :deputy_id => params[:person_id], :proposal_id => params[:proposal_id]
    elsif params[:type] == "influenceur"
      sent_message = SentMessage.find_or_create_by_influencer_id_and_proposal_id :influencer_id => params[:person_id], :proposal_id => params[:proposal_id]
    end
    sent_message.count += 1
    sent_message.save
  end

end
