Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users
  resources :forms, only: %i[index show]
  resources :attendees, only: %i[index show new]
  namespace :admin do
    root to: :dashboard
    resources :users, :forms, :attendees
  end
end
