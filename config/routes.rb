# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'games#top'
  get 'games/search'
  get 'games/complete'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy'
  resources :users
  resources :wankos do
    resources :collections
  end
end
