Rails.application.routes.draw do
  devise_for :users
  # hook up routes so the localhost:3030 takes us to the landing page
  root 'static_pages#index'
end
