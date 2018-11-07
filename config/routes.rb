Rails.application.routes.draw do
  devise_for :admins
  root to: "outers#index"
  resources :clothings
  resources :homes
  resources :foods
  resources :outers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
