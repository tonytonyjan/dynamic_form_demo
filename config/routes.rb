Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users
  resources :forms, only: %i[index show]
  resources :attendees, only: %i[index show new]
  get 'select2/tags', format: :json
  get 'select2/results', format: :json
  namespace :admin do
    root to: :dashboard
    resources :users, :forms, :attendees
  end
end
