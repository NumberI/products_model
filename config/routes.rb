Rails.application.routes.draw do
  get 'beginning/new'
  get 'beginning/create'
  get 'beginning/show'
  get 'beginning/index'
  get '/' => 'beginning#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
