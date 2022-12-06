Rails.application.routes.draw do
  get 'analytic/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  resources :articles
  get 'search', to: 'search#search'
  resources :analytics
end
