Rails.application.routes.draw do
  root 'forms#index'
  devise_for :users
  resources :forms, only: %i[index show] do
    resources :attendees, only: %i[new create]
  end
  resources :attendees, only: %i[show index]

  get 'select2/tags', format: :json
  get 'select2/results', format: :json
  namespace :admin do
    root to: :dashboard
    resources :users
    resources :forms do
      resources :attendees
    end
  end
end
