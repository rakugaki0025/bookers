class BooksController < ApplicationController
  
  
  def index
      @book = Book.new
        # インスタンス変数 = モデル名 空オブジェクト 新規作成
        # 左の箱に右を格納
        # インスタンス名はなんでもいい,空のオブジェクトもなんでもいい
      @books = Book.all 
  end
  
  def create
        # １.&2. データを受け取り新規登録するためのインスタンス作成
        
        # privateメソッドの名前は、「モデル名_params」とする
      @book = Book.new(book_params)
        # インスタンス変数 = モデル名.newと一緒
        
      if @book.save
           # saveメソッド
         flash[:notice] = "Book was successfully created."
           # 3. フラッシュメッセージを定義し、詳細画面へリダイレクト
         redirect_to book_path(@book.id)
           # アクションを実行する
      else
         @books = Book.all
         render :index
           # アクションを実行しない
      end
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
      @bookers = Book.new
      
  end
    
    
  def edit
      @book = Book.find(params[:id])
       # 
      @bookers = Book.new
  end  # 
     
     
  def update
      
      @book = Book.find(params[:id])
                # updateアクション
                
      if @book.update(book_params)
           # saveメソッド
         flash[:notice] = "Book was successfully updated."
           # 3. フラッシュメッセージを定義し、詳細画面へリダイレクト
         redirect_to book_path(@book.id)
           # アクションを実行する
           
      else
         @books = Book.all
         render :edit
           # アクションを実行しない
   end
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
