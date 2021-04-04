Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  root 'homes#top'


end