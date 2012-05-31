class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
      t.string :firstname
      t.string :surname
      t.string :photo_url
      t.string :twitter_username

      t.timestamps
    end
  end
end
