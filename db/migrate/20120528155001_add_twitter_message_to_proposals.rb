class AddTwitterMessageToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :twitter_message, :string
  end
end
