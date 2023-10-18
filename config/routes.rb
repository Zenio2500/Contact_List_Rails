Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root "static_pages#index"
  get "sobre" => "static_pages#sobre"
  get "contato" => "static_pages#contato"
  get "entrar" => "sessions#new"
  post "entrar" => "sessions#create"
  delete "sair" => "sessions#destroy"
  resources :contacts
  resources :users, only: [:new, :create, :show]
  # Defines the root path route ("/")
  # root "posts#index"
end
