class PagesController < ApplicationController
  before_filter :authenticate_http_admin, :only => [:admin]
  
  def home
    @proposals = Proposal.all
  end

  def deputies
    @deputies = Deputy.all
    @twitter_message = Proposal.find(params[:proposal_id]).twitter_message
  end

  def admin
  end

end
