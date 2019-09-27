Rails.application.routes.draw do
  devise_for :users
  # hook up routes so the localhost:3030 takes us to the landing page
  root 'static_pages#index'
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end
end
