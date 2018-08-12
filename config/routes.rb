Rails.application.routes.draw do
  resources :wallets do
    resources :driver_license, controller: 'wallets/driver_license'
    resources :credit_cards, controller: 'wallets/credit_cards'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
