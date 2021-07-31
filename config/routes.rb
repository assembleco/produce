Rails.application.routes.draw do
  namespace :admin do
      resources :bank_cards
      resources :sellers
      resources :purchases
      resources :companies
      resources :bids
      resources :buyers

      root to: "purchases#index"
    end
  root to: "pages#index"
end
