class PagesController < ApplicationController
  before_filter :authenticate_http_admin, :only => [:admin]
  
  def home
    @proposals = Proposal.all
  end

  def deputies
    @deputies = Deputy.all
    @twitter_message = Proposal.find(params[:proposal_id]).twitter_message
  end

  def thanks
    sent_message = SentMessage.find_or_create_by_deputy_id_and_proposal_id :deputy_id => params[:deputy_id], :proposal_id => params[:proposal_id]
    sent_message.count += 1
    sent_message.save
  end

end
