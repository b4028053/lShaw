Rails.application.routes.draw do
  get 'sessions/index'
  #get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/edit'
  get 'users/destroy'
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
  get 'static_pages/smartphone'
  get 'static_pages/tablet'
  get 'static_pages/smartTV'

  resources :profiles

  resources :products do 
    collection do
      get :search
    end
  end
  
  resources :reviews
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
