Rails.application.routes.draw do


  devise_for :users
  
  authenticated :user do
      root to: "home#hello", as: "home"
  end
  unauthenticated :user do
      root 'welcome#index'
  end
  
  resources :users
  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
