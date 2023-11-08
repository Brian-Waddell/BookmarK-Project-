Rails.application.routes.draw do
  devise_for :users

  get "/dashboard" => "users#dashboard", as: :dashboard

  resources :session_participants
  resources :user_books
  resources :questions
  resources :books
  resources :comments
  resources :group_sessions
  resources :users 
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  authenticated :user do
    # TODO: maybe change to "dashboard#index"
    root "group_sessions#index", as: :authenticated_root
  end
  
  unauthenticated :user do
    root "articles#index", as: :unauthenticated_root
  end
end
