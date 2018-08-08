Rails.application.routes.draw do
  root 'posts#index'
  
  devise_for :users
  
  resources :posts do
  end
  
  resources :users do
    get 'profile'
  end

end
