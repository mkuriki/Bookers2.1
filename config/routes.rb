Rails.application.routes.draw do
  
  resources :post_images, only: [:new, :index, :show] do 
  resources :users, only: [:show,:edit]
  resources :books, only: [:new, :create, :index, :edit, :show]
end
  get 'users/index'

  get 'homes/about', as: 'about'
  post 'books/create' => 'books#create'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
