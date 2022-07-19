Rails.application.routes.draw do
  resources :information_forms
  devise_for :admins
  devise_for :users
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "information_form", to: "information_form#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :information_form do
    collection do
      get :top
    end
  end
end
