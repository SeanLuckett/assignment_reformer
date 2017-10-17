Rails.application.routes.draw do
  resources :users, except: [:destroy]

  namespace :admin do
    get 'portal', to: 'portal#index'
    resources :categories
    resources :products
    resources :users
  end
end
