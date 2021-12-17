Rails.application.routes.draw do
  devise_for :users
  resources :friends
  root 'home#index'
  get 'about', to: 'home#about', as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
