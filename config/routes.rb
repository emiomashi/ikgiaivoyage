Rails.application.routes.draw do
  devise_for :users
  root "articles#index"

  resources :about
  resources :home
  resources :dashboard
  resources :articles do
    resources :comments
  end
end
