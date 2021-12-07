Rails.application.routes.draw do

  #getting resouces-->

  devise_for :users
  resources :songs
  resources :albums
  resources :artists

  #setting routes

  get 'main/contact'
  get 'main/index'

  #setting root view

  root 'main#index'
end
