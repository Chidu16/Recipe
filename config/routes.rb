Rails.application.routes.draw do
  
  resources :notifylikes
  resources :categories
  resources :notifications
  resources :meals
  resources :meal_plans
  resources :comments
  resources :courses
  resources :cuisines
  resources :profiles
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  devise_for :users
  # devise_for :users, controllers: { registrations: 'users/registrations' }
  
  # devise_for :org_people, :controllers => {:registrations => "org_people/registrations"}
  root :to => 'home#index'
  get 'home/index'
  resources :searches
  resources :ingredients
  resources :recipes do
    resources :directions
    resources :likes
    

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
