Rails.application.routes.draw do
  root 'posts#index'
  
  devise_for :users
  
  resources :posts do
    member do
    put "like", to: "posts#like"
    put "dislike", to: "posts#dislike"
    end
  end
  
  resources :users do
    get 'profile'
  end

end
