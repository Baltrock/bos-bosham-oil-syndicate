Rails.application.routes.draw do
  devise_for :views
  resources :information_forms
  devise_for :admins
  devise_for :users
  root to: "pages#home"
  get "admin_zone", to:"pages#admin_zone", as: :admin_zone
  get "about", to: "pages#about", as: :about
  get "contact", to: "pages#contact", as: :contact
  get "information_form", to: "information_form#index", as: :form_for_user
  get 'users' => 'users#primary', as: :user_root
  get 'admin' => 'admin#primary', as: :admin_root

  # get 'admin' => 'admin#primary', as: :admin_root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :information_form do
    collection do
      get :top
    end
  end
end
