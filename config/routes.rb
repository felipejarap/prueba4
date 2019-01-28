Rails.application.routes.draw do
 # get 'user_activities/create'
  #get 'activities/index'
  resources :activities, only: :index do
    resources :activities_users, only: :create 
  end
  resources :activities_users, only: :index
  root to: 'activities#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
