Rails.application.routes.draw do
  

  #root 'demo#index'
    
  # Demo Controller Routes
  get 'demo/index'
  get 'demo/show'
  get 'demo/about'
  get 'demo/contact'

  # Books Controller Routes
  get 'books/all_books_count'
  get 'books/related_subject'
  get 'books/check_book'
  get 'books/check_subject'

  # Helper Methods Routes
  get 'helper_methods/link_to'
  get 'helper_methods/link_to_url_params'

  # Default Route
  get ':controller(/:action(/:id))'

  # Defines the root path route ("/")
  # root "articles#index"
end
