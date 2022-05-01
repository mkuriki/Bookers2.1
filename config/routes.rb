Rails.application.routes.draw do
  
  get 'relationships/followers'
  get 'relationships/followings'
  devise_for :users

  get 'home/about' => 'homes#about', as: 'about'

 
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments
  end
  resources :users do 
    resource :relationships
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
