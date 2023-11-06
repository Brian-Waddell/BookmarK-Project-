Rails.application.routes.draw do
  resources :session_participants
  resources :user_books
  resources :questions
  resources :books
  resources :comments
  resources :group_sessions
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "articles#index"
end
