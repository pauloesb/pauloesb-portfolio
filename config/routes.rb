Rails.application.routes.draw do

  resources :topics, only: [:show]

  devise_for :users, skip: [:sessions, :registrations, :password]

  as :user do
    get '/login', to: 'devise/sessions#new', as: :new_user_session
    post '/login', to: 'devise/sessions#create', as: :user_session
    delete '/logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  post 'send-message', to: 'pages#send_message'

  root to: 'pages#home'
end
