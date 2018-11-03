Rails.application.routes.draw do
  get 'users/new'
  get 'shops/new'
  get 'shops/query' => 'shops#query'
  post 'shops/query' => 'shops#query'
  post 'shops/search' => 'shops#search'
  get 'organisations/new'
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
