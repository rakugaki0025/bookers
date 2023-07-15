class BooksController < ApplicationController
  def top
  end
  
  def index
    @book = Book.new
        # インスタンス変数 = モデル名 空オブジェクト 新規作成
        # 左の箱に右を格納
    @books = Book.all 
  end
  
  def create
        # １.&2. データを受け取り新規登録するためのインスタンス作成
        # list = List.new(list_params)
        # privateメソッドの名前は、「モデル名_params」とする
      book = Book.new(book_params)
        # ローカル変数 = モデル名.newと一緒
      book.save
        # saveメソッド
        # redirect_to '/books/show'
      redirect_to book_path(book.id)
        # 遷移する先
  end
  
  def show
    @book = Book.find(params[:id])
     # @book = Book.find(params[:投稿ページ])
  end
    
  def edit
  end
  
  
  private
        # ストロングパラメータ
        # ここから下はこのcontrollerの中でしか呼び出せません
  def book_params
        # モデル名と一緒
    params.require(:book).permit(:title, :body)
        # params.require(:モデル名).permit(:保存を許可するカラム指定)
  end
  
end
