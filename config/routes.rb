Rails.application.routes.draw do
  root to: "pages#home"
  # devise_for :views

  namespace :admin do
    resources :users
  end

  devise_for :admins
    resources :dashboard_form
  devise_for :users, controllers: { registrations: "registrations" }
    resources :information_forms


  get "about", to: "pages#about", as: :about
  get "information_form", to: "information_form#index", as: :form_for_user
  get "dashboard_form", to: "dashboard_form#index", as: :form_for_admin
  get 'users' => 'users#primary', as: :user_root
  get 'admin' => 'admin#primary', as: :admin_root

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
end
