class CreateWithres < ActiveRecord::Migration
  def change
    create_table :withres do |t|
      t.string :content
      t.integer :with_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
