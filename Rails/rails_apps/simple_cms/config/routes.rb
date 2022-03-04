Rails.application.routes.draw do

  # root 'demo#index'
    
  # Demo Controller Routes
  get 'demo/index'
  get 'demo/show'

  # Books Controller Routes
  get 'books/all_books_count'
  get 'books/related_subject'

  # Defines the root path route ("/")
  # root "articles#index"
end
