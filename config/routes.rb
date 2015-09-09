require 'sidekiq/web'

Rails.application.routes.draw do
  resources :news
  resources :news
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # stolen from gitlab
  constraint = lambda { |request| request.env['warden'].authenticate? }
  constraints constraint do
    mount Sidekiq::Web => '/sidekiq'
  end
end
