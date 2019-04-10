Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/edit'
  get 'reviews/destroy'
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/update'
  get 'profiles/edit'
  get 'profiles/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/update'
  get 'products/edit'
  get 'products/destroy'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'

  resources :profiles
  resources :products
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
