Rails.application.routes.draw do
  # get 'user/new'
  # get 'user/create'
  # get 'info/new'
  # get 'info/create'
  get 'where_w/new'
  get 'where_w/create'
  # get 'products/new'
  # get 'products/create'
  # get 'product/new'
  # get 'product/create'
  # get '/products/user/:id' => 'user#show'
  resource :products, only: [:new, :create] do
  	resources :user, only: [:new, :create, :show]
  	resources :info, only: [:new, :create]
  end
  get '/' => 'products#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
