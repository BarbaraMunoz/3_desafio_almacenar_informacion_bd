Rails.application.routes.draw do
  
  get "welcome", to: "welcome#index"

  get "documentales", to: "documentary_film#index"
  post "crear_documental", to: "documentary_film#create"
  get "nuevo_documental", to: "documentary_film#new"

  
  get 'series', to: 'serie#index'
  post "crear_serie", to: "serie#create"
  get "nueva_serie", to: "serie#new"

  get "movies", to: "movie#index"
  post "crear_movie", to: "movie#create"
  get "nueva_movie", to: "movie#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" -> Es la ruta raiz
  root "welcome#index"

end
