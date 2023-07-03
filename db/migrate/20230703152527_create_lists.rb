class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
           # create_table :テーブル名 do |t| # テーブル名にはモデル名の複数形が割り振られる
         t.string :title # t.データ型 :カラム名
         t.string :body  # t.データ型 :カラム名
         
      t.timestamps
    end
  end
end
