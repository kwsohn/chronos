Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  authenticated :user do
      root to: "home#hello", as: "home"
  end
  unauthenticated :user do
      root 'welcome#index'
  end
  
  match 'home' => 'home#hello', :via=> :get
  
  resources :users
  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
