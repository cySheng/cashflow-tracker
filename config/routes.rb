Rails.application.routes.draw do
  resources :incomes, only: [:create]
  resources :expenses, only: [:create]
  root 'cashflows#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
