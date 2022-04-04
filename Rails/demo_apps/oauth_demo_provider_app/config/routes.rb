Rails.application.routes.draw do
  use_doorkeeper
  root "home#index"
  
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  # Routes for home controller
  resources :home do 
    member do 
      get :delete
    end
  end

  # Routes for home controller
  resources :orders do 
    member do 
      get :delete
    end
  end
  
  # Routes for users controller
  resources :users do 
    member do 
      get :delete
    end
    collection do 
      get :user_image
      get :download_pdf
    end
  end
  
  # Routes for products controller
  resources :products do 
    member do 
      get :delete
    end
    collection do 
      get :product_image
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  
end
