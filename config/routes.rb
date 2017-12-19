Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :registrations => "users/registrations"}
  resources :user_stocks, only: [:create, :destroy]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  
end
