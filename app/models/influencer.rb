class Influencer < ActiveRecord::Base
  def number_of_sent_messages
    SentMessage.where(:influencer_id => id).sum('count')
  end
end
