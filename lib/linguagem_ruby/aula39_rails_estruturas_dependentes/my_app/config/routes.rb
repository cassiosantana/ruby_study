Rails.application.routes.draw do
  resources :clients
  resources :pedidos do
    resources :item_pedidos
  end
  resources :carros
  resources :marcas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
