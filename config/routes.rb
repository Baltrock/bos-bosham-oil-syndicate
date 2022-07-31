Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: "pages#home"
  # devise_for :views

  # namespace :admin do
  #   resources :users
  # end

  # devise_for :users
  # mount IsAdmin::Engine => '/', as: 'rails_admin'

  get '/information_forms', to:'information_forms#index', as: :form_for_user
  get '/dashboard_forms', to: 'dashboard_forms#index', as: :form_for_admin

  devise_for :admins
    resources :dashboard_forms, except: %i[index]
  devise_for :users, controllers: { registrations: "users/registrations" }
    resources :information_forms


  get "about", to: "pages#about", as: :about
  get 'users' => 'users#primary', as: :user_root
  get 'admin' => 'admin#primary', as: :admin_root


end


# get 'admin' => 'admin#primary', as: :admin_root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :information_form do
  #   collection do
  #     get :top
  #   end
  # end
  # resources :dashboard_form do
  #   collection do
  #     get :top
  #   end
  # end
