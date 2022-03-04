Rails.application.routes.draw do
  

  #root 'demo#index'
    
  # Demo Controller Routes
  get 'demo/index'
  get 'demo/show'

  # Books Controller Routes
  get 'books/all_books_count'
  get 'books/related_subject'
  get 'books/check_book'
  get 'books/check_subject'

  # Helper Methods Routes
  get 'helper_methods/link_to'

  # Defines the root path route ("/")
  # root "articles#index"
end
