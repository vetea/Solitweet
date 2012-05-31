class AddInfluencerIdToSentMessages < ActiveRecord::Migration
  def change
    add_column :sent_messages, :influencer_id, :integer
    add_index :sent_messages, :influencer_id
  end
end
