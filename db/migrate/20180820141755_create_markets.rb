# market

class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :item    # 물품명
      t.string :unit    # 판매 단위
      t.string :price   # 판매 가격
      t.string :contact     # 연락방법

      t.string :contactID
      t.string :done    # 완료여부
      t.string :content # 상세내용
      t.integer :user_id
      
      t.string :image, :default =>""  
      t.timestamps null: false
    end
  end
end
