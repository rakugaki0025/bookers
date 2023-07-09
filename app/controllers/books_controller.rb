class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.new
  end
  
  
  
  private
  # ストロングパラメータ
  # ここから下に記述することでメソッドの呼び出しに制限
  def books_params
    params.require(:lists).permit(:title, :body)
     # params.require(:モデル名).permit(:保存を許可するカラム指定)
  end
  
end
