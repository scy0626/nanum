class CreateMarketres < ActiveRecord::Migration
  def change
    create_table :marketres do |t|
      t.string :content
      t.integer :market_id
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
