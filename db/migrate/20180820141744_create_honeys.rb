# honey

class CreateHoneys < ActiveRecord::Migration
  def change
    create_table :honeys do |t|
      t.string :image, :default =>""  
      t.string :item  #상품명
      t.timestamps null: false
    end
  end
end
