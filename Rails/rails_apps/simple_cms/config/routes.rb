Rails.application.routes.draw do
  root 'demo#index'
  # define demo index as root route. 

  get 'demo/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get ':controller(/:action)'
  # default route structure

  # Defines the root path route ("/")
  # root "articles#index"
end
