Rails.application.routes.draw do
  resources :carros
  # home é o controller e index é a ação lá do controller.
  root to: 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
