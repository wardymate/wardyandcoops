Rails.application.routes.draw do
  devise_for :users
  resources :users, except: :destroy

  root to: 'visitors#index'

  get 'home', to: "visitors#index"
  resources :wedding_responses, except: :destroy
end
