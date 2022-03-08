# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'games#top'
  get 'games/search'
  get 'games/sugosugi'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy'
  resources :users, only: %i[index new create]
  resource :user, only: %i[edit update]
  resources :wankos do
    resources :collections, only: %i[create]
  end
  resources :collections
end
