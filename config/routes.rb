Rails.application.routes.draw do
  get 'rooms/index'
  root 'pages#home'
  devise_for :users
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
end
