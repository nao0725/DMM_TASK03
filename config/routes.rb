Rails.application.routes.draw do
  devise_scope :user do
    root :to => "devise/sessions#new"
  end
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show,:edit]
end
