Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks do
    patch "move", to: "tasks#move", as: :move, on: :member
  end

  
    
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
