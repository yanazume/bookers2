Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  root to: 'homes#top'

  get "/home/about" => "homes#about"
  resources :users
  resources :books do
  resource :favorites, only: [:create, :destroy]

  resources :post_comments, only: [:create, :destroy]
  end

end
