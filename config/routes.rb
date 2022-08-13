Rails.application.routes.draw do
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  devise_for :users
  
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'の3つを書き換え
  resources :post_images, only: [:new, :index, :show]
  
  get "/homes/about" => "homes#about", as: "about"
end
