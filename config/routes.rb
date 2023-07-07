Rails.application.routes.draw do
  get '/top' => 'homes#top'     # topページへ飛ぶために必要
  get '/books' => 'books#top'   # topページへ飛ぶために必要(～/表示先) => 'サイト名'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
