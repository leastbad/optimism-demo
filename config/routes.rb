Rails.application.routes.draw do
  resources :posts, format: false
  root "posts#index"
end
