Rails.application.routes.draw do
  get 'admins/new'
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
