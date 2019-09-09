Rails.application.routes.draw do
  devise_for :roles
  resource :products, only: [:new, :create, :show] do
  	resources :user, only: [:new, :create, :show]
  	resources :info, only: [:new, :create, :show, :direct_upload_pictures]
  end
  get '/' => 'products#new'
  root to: "products#new"
  patch '/products/info/upload' => 'info#direct_upload_pictures'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
