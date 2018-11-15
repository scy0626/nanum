# with

class CreateWiths < ActiveRecord::Migration
  def change
    create_table :withs do |t|
      t.string :item        # 시킬 음식
      t.string :deadline    # 마감시간(오전/오후)
      t.string :deadlineH   # 마감시간(시)
      t.string :deadlineM   # 마감시간(분)
      t.integer :num        # 모집인원
      t.integer :remain     # 뭔지 모르겠는데(아마 현재인원?)->지울것
      t.string :price       # 가격
      t.string :done        # 완료여부
      t.string :content     # 상세내용
      
      t.string :contact     # 연락방법
      t.string :contactID
      t.integer :user_id
      t.string :image, :default =>""  
      t.timestamps null: false
    end
  end
end
