Rails.application.routes.draw do
  namespace :admin do
    resources :forms
  end

  root 'pages#index'
  devise_for :users
  resources :forms, only: %i[index show]
  resources :attendees, only: %i[index show new]
  namespace :admin do
    root to: :dashboard
    resources :users, :forms, :attendees
  end
end
