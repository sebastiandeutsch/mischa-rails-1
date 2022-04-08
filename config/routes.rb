Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'hello' => 'application#hello'

  # get 'posts' => 'posts#index', as: :posts
  # get 'posts/new' => 'posts#new'
  # post 'posts' => 'posts#create'
  # get 'post/:id' => 'posts#show', as: :post
  # delete 'post/:id' => 'posts#destroy'
  # get 'post/:id/edit' => 'posts#edit', as: :edit_post
  # patch 'post/:id' => 'posts#update'

  resources :posts do
    resources :comments
  end
end
