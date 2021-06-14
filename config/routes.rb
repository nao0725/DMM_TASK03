Rails.application.routes.draw do
  root to: "homes#top"
  get "homes/new" => "homes#new"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy,:edit]
  resources :users, only: [:show,:edit,:index]
end
