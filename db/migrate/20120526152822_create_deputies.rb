class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|
      t.string :firstname
      t.string :surname
      t.string :description
      t.string :photo_url
      t.string :twitter_username
      t.string :political_party
      t.integer :number_of_twitter_followers

      t.timestamps
    end
  end
end
