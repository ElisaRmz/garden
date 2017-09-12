Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :plants do 
    resources :pests
  end

  resources :pests do
    resources :plants
  end

  resources :lands

  resources :families


  get 'macronutrients', to: 'macronutrients#index'

  get 'asociations', to: 'asociations#index'


end
