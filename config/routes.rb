Rails.application.routes.draw do
  
  devise_for :users

  get 'home/about' => 'homes#about', as: 'about'
  get 'search' => 'searches#search'
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments
  end
  resources :users do 
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  
  resources :groups

  root to: "homes#top"
end
