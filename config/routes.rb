Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello/index' => 'hello#index'
  get 'hello/show' => 'hello#show'
  get 'hello/link' => 'hello#link'
  get 'hello/log' => 'hello#log'
  get 'hello/post' => 'hello#post'
  get 'hello/my' => 'hello#my'
  get 'hello/article1' => 'hello#article1'
  get 'hello/link_en' => 'hello#link_en'
  get 'hello/log_en' => 'hello#log_en'
  get 'hello/log_en' => 'hello#log_en'
  get 'hello/post_en' => 'hello#post_en'
  get 'hello/my_en' => 'hello#my_en'

  

  get 'hello/:tag_id' => 'hello#spring', as: 'hello_spring'
  root 'hello#index'
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
end
