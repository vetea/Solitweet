class CreateSentMessages < ActiveRecord::Migration
  def change
    create_table :sent_messages do |t|
      t.references :deputy
      t.references :proposal
      t.integer :count, :null => false, :default => 0

      t.timestamps
    end
    add_index :sent_messages, :deputy_id
    add_index :sent_messages, :proposal_id
  end
end
