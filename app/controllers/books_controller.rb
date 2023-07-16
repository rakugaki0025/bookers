class BooksController < ApplicationController
  def top
  end
  
  def index
      @book = Book.new
        # インスタンス変数 = モデル名 空オブジェクト 新規作成
        # 左の箱に右を格納
        # インスタンス名はなんでもいい,空のオブジェクトもなんでもいい
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
        # 遷移する先 book(名称なんでも可)_id_投稿XXページ
  end
  
  def destroy
      @book = Book.find(params[:id])
        # データ（レコード）を1件取得
      
      @book.destroy
        # データ（レコード）を削除
      
      redirect_to '/books'
        # 投稿一覧画面へリダイレクト  
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
