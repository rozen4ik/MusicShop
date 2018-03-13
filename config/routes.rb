Rails.application.routes.draw do
  resources :instrument_in_shops
  resources :sell_instrument_for_customers
  resources :instruments
  root 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
