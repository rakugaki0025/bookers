Rails.application.routes.draw do
  get '/top' => 'homes#top'      # topページへ飛ぶために必要
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
