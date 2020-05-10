# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  resources :sessions, only: :create

  mount ActionCable.server, at: '/cable'
end
