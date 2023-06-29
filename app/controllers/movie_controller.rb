class MovieController < ApplicationController
  def index
    @movies = Movie.all # select * from users; HAY UN RETURN IMPLICITO POR LA VARIABLE @movies
  end

  def create
    # Se recibe desde el form un HASH
    # Capturo los datos según el "name" en el index.html de movie
    @name= params[:name]
    @synopsis= params[:synopsis]
    @director= params[:director]
  
    # Crear instancia de Movie
    @movie = Movie.new(name: @name, synopsis: @synopsis, director: @director) # Se crea una instancia con parámetros
  
    if @movie.save
      # Redirecciona a la ruta para imprimir en documentales/index (Controller)
      redirect_to '/movies',  notice: 'Película creada exitosamente.'
      else
        redirect_to "/nueva_movie", notice: 'No se ha podido agregar la Película.'
      end
  end

  def new
    @movie = Movie.new
  end
end
