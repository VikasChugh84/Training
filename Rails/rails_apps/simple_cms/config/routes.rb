Rails.application.routes.draw do
 
  root 'demo#index'

  # Demo Controller Default Routes
  #get 'demo/about'
  #get 'demo/contact'

  # Resourceful routes for demo controller
  namespace :api do
  resources :demo do
    collection do
      get :about
      get :contact
    end
  end
  end
  
  # Books Controller Default Routes
  # get 'books/all_books_count'
  # get 'books/related_subject'
  # get 'books/check_book'
  # get 'books/check_subject'

  # Resourceful routes for books controller
  resources :books do
    member do 
      get :delete
    end
    collection do
      get :all_books_count
      get :related_subject
      get :check_book
      get :check_subject
    end
  end

  # Helper Methods Controller Default Routes
  get 'helper_methods/link_to'
  get 'helper_methods/link_to_url_params'
  
  # Page Controller Routes
  #get 'pages/about'

  # Resourceful routes for page controller
  resources :pages do
    member do
      get :delete
    end

    collection do 
      get :about
    end
  end
  
  # Resourceful routes for subjects controller
  resources :subjects do
    member do
      get :delete
    end
  end
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  

  # Default Route
  get ':controller(/:action(/:id))'

  # Defines the root path route ("/")
  # root "articles#index"
end
