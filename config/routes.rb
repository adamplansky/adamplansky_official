Rails.application.routes.draw do
#  get 'weights/index'

  resources :weights,only: [:index]
  resources :posts,only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root to: 'blogs#index'
  match "countdown", :to => "blogs#count_down", :via => :get

  devise_for :users
  #   resources :posts, only: [:index, :show]
  #   root to: "posts#index"
  # end
end
