Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'     # topページへ飛ぶために必要
  get '/books' => 'books#top'   # topページへ飛ぶために必要(～/表示先) => 'サイト名'
  post 'lists' => 'lists#create' # 保存機能のため送信側？
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
