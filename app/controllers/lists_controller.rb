class ListsController < ApplicationController
  def new
  end
  
  def index
  end

  def show
  end
  
  def edit
  end
  
  private
  # ストロングパラメータ
  # ここから下に記述することでメソッドの呼び出しに制限
  def list_params
    params.require(:list).permit(:title, :body)
     # params.require(:モデル名).permit(:保存を許可するカラム指定)
  end
  
end
