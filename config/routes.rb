Rails.application.routes.draw do
  root 'squids#index'
  resources :squids
end
