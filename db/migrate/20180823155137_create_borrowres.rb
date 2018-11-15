class CreateBorrowres < ActiveRecord::Migration
  def change
    create_table :borrowres do |t|
      t.string :content
      t.integer :borrow_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
