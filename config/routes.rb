Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  post 'posts', to: 'posts#create'
  # リソースを識別したいのでpathパラメーターでエンドポイントを作る
  get 'posts/:id', to: 'posts#checked'
end
