# community

class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :head    # 분류(후기/자유/꿀팁공유)
      t.string :item   # 글제목
      t.string :content # 내용
      t.string :contact     # 연락방법
      t.string :contactID
      t.integer :user_id
      t.string :image, :default =>""  
      t.timestamps null: false
    end
  end
end
