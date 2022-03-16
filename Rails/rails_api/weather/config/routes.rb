Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      post 'user_token' => 'user_token#create'
      resources :locations do
        resources :recordings
      end
    end
  end
  # Here the resources defined specifically for apis

  #resources :locations
  # Here the resources defined for basic rails app like controller and html files.
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
