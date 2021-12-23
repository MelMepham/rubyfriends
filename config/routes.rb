Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :user_details
  resources :permissions
  get 'about', to: 'home#about', as: :about
  root 'user_details#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
