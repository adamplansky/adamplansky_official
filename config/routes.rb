Rails.application.routes.draw do
  root to: 'blogs#index'
  match "countdown", :to => "blogs#count_down", :via => :get  
end
