class Deputy < ActiveRecord::Base
  def number_of_sent_messages
    SentMessage.where(:deputy_id => id).sum('count')
  end
end
