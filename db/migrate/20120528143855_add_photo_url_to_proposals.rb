class AddPhotoUrlToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :photo_url, :string
  end
end
