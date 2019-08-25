Rails.application.routes.draw do
  resource :products, only: [:new, :create, :show] do
  	resources :user, only: [:new, :create, :show]
  	resources :info, only: [:new, :create, :show]
  end
  get '/' => 'products#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
