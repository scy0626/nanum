# borrow

class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.string :item    # 물품명
      t.string :period  # 대여기간
      t.string :price   # 대여가격
      t.string :done    # 완료여부
      t.string :content # 세부내용
      t.string :contact     # 연락방법
      t.string :contactID
      t.integer :user_id
      t.string :image, :default =>""  
      t.timestamps null: false
    end
  end
end
