Rails.application.routes.draw do
  resources :products
  resources :line_items
  resources :my_accounts
  resources :budgets
  devise_for :users
  get 'home' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
