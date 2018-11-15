class CreateCommunityres < ActiveRecord::Migration
  def change
    create_table :communityres do |t|
      t.string :content
      t.integer :community_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
