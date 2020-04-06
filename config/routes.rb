Rails.application.routes.draw do
  get '/login'          , to: 'sessions#new'
  post'/login'          , to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
end
