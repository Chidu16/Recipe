Rails.application.routes.draw do
  
  resources :meals
  resources :meal_plans
  resources :comments
  resources :courses
  resources :cuisines
  resources :profiles
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  devise_for :users
  root :to => 'home#index'
  get 'home/index'
  resources :ingredients
  resources :recipes do
    resources :directions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
