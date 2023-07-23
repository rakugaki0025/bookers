class Book < ApplicationRecord
    # バリテーション設定場所
  
  validates :title, presence: true
   # 空
  validates :body, presence: true
  
end
