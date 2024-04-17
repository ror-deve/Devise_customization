Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "home#index"
   ************************** Routes for Practice *********************************
  # get '/users/:id', to: 'users#show'
  # get 'hello', action: :show, controllers: 'users'
  # get 'user', action: :show, controller: 'users'
  # namespace :hey do
  #   resources :users
  # end
  # scope module: 'students' do
  #   resources :users
  # end
  
  # resources :users, module: 'admin'
  # scope '/admin' do  #only for url 
  #   resources :users
  # end
  
  # resources :articles, path: '/hello/users'
  get 'exit', to: 'users#destroy', as: :logout
  # get ':username', to: 'users#show', as: :user
  # resources :users
#  get 'fullname', to: 'users#new', as: :user_fullname
  #  match 'checkphotos', to: 'users#show', via: [:get, :post]
  # match 'hello', to: 'users#show', via: :all
  # get 'users/:id', to: 'users#show', constraints: { id: /[A-Z]\d{5}/ }
  # namespace :hello do
  #   constraints homes: 'admin' do
  #     resources :users
  #   end
  # end
  # constraints(User.new) do
  #   get '*path', to: 'users#index'
  #   get '*other-path', to: 'users#index'
  # end
  
  # get 'photos/path', to: 'users#index'
  # get '/hello/:id', to: 'users#show'
  # get '/search', to: 'products#search'
  # get '/products/:id', to: 'products#show', constraints: { id: /\d+/ }
end
