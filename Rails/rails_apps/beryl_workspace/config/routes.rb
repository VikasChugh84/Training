Rails.application.routes.draw do
  get 'home/index'
  root "home#index"

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
  
  resources :users do
    member do
      get :delete
    end

    collection do 
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
