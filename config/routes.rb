Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: "pages#home"

  resources :dashboard_form, except: %i[index]
  get '/dashboard_forms', to: 'dashboard_forms#index', as: :form_for_admin

  devise_for :admins
    resources :dashboard_forms
  devise_for :users, controllers: { registrations: "users/registrations" }
    resources :information_forms


  get "about", to: "pages#about", as: :about
  get "information_form", to: "information_form#index", as: :form_for_user
  get 'users' => 'users#primary', as: :user_root
  get 'admins' => 'admin#primary', as: :admin_root


end
