Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # rota para a página inicial da aplicação
  root 'home#index'

  # rota para página sobre
  get '/sobre', to: 'sobre#index'

  get '/produtos', to: 'produtos#index'
end
