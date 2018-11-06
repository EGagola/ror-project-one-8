Rails.application.routes.draw do
  resources :c_lothings
  resources :homes
  resources :foods
  resources :outers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
