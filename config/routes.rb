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
  resource :products, only: [:new, :create] do
	resources :users, only: [:new, :create]
	resources :info, only: [:new, :create]
  end
  get 'beginning/new'
  get 'beginning/create'
  get 'beginning/show'
  get 'beginning/index'
  get '/' => 'products#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
