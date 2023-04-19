Rails.application.routes.draw do
  root "articles#index"

  resources :about
  resources :home
  resources :dashboard
  resources :articles do
    resources :comments
  end
end
