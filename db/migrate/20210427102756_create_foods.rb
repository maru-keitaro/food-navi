class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :store_name,   null: false  # 店舗名
      t.text :content,        null: false  # 口コミ欄
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
