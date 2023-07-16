class Book < ApplicationRecord
  
  validates :title, presence: true
   # 空
  validates :body, presence: true
  
end
