Rails.application.routes.draw do
  root 'pages#index'

  get '/posts' => 'posts#index'
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/posts/:id' => 'posts#show', :as => :post
  get '/posts/:id/edit' => 'posts#edit'
  patch '/posts/:id' => 'posts#update'
  delete '/posts/:id' => 'posts#destroy'
end
