Rails.application.routes.draw do
  
 
  #get 'users/show'
  #get 'users/edit'の2つを書き換え
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
    
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'の3つを書き換え
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
