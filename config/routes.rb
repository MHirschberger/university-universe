Rails.application.routes.draw do

  root 'application#home'
  resources :universities, only: [:index, :new, :create, :edit, :update, :show] do
    resources :courses, only: [:index, :new, :create]
  end

  resources :courses, only: [:show, :edit, :update, :destroy] do
    resources :posts
  end
  resources :users, only: [:new, :create, :show]
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  get '/auth/facebook/callback' => 'sessions#create'

  get '/mostposts', to: 'users#most_posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
