Rails.application.routes.draw do
  root "vehicles#index"
  resources :vehicles do
    match '/scrape', to: 'vehicles#scrape', via: :post, on: :collection
    collection do
      get :scrape
    end
  end
end
