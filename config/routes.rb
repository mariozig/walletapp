Rails.application.routes.draw do
  resources :wallets do
    resources :driver_license, controller: 'wallets/driver_license'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
