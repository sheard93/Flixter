Rails.application.routes.draw do
  # hook up routes so the localhost:3030 takes us to the landing page
  root 'static_pages#index'
end
