class DocumentaryFilmController < ApplicationController
  def index
    @documentaryFilms = DocumentaryFilm.all # select * from users; HAY UN RETURN IMPLICITO POR LA VARIABLE @doc_films
  end

  def create
    # Se recibe desde el form un HASH
    # Capturo los datos según el "name" en el index.html de documentales
    @name= params[:name]
    @synopsis= params[:synopsis]
    @director= params[:director]
  
    # Crear instancia de @documentaryFilm
    @documentaryFilm = DocumentaryFilm.new(name: @name, synopsis: @synopsis, director: @director) # Se crea una instancia con parámetros
  
    if @documentaryFilm.save
    # Redirecciona a la ruta para imprimir en documentales/index (Controller)
    redirect_to '/documentales',  notice: 'Documental creado exitosamente.'
    else
      redirect_to "/nuevo_documental", notice: 'No se ha podido agregar el Documental.'
    end
  end

  def new
    @documentaryFilm = DocumentaryFilm.new
  end
end

