# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trees
  root 'about_us#index'

  get 'about_us/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :trees, only: [:show]
    end

    namespace :v2 do
      resources :trees, only: [:show]
    end
  end
end
