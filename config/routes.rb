Rails.application.routes.draw do
  resources :posts

  get 'posts/index'

  get 'posts/show'

  root to: 'blogs#index'
  match "countdown", :to => "blogs#count_down", :via => :get
  # MarkdownExample::Application.routes.draw do
  devise_for :users
  #   resources :posts, only: [:index, :show]
  #   root to: "posts#index"
  # end
end
