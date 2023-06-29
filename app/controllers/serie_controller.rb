class SerieController < ApplicationController
  def index
    @series = Serie.all # select * from serie; HAY UN RETURN IMPLICITO POR LA VARIABLE @series
  end

  def create
    # Se recibe desde el form un HASH
    # Capturo los datos según el "name" en el index.html de user
    @name= params[:name]
    @synopsis= params[:synopsis]
    @director= params[:director]
  
    # Crear instancia de Serie
    @serie = Serie.new(name: @name, synopsis: @synopsis, director: @director) # Se crea una instancia con parámetros
  
    if @serie.save
      # Redirecciona a la ruta para imprimir en series/index (Controller)
      redirect_to '/series',  notice: 'Serie creada exitosamente.'
      else
        redirect_to "/nueva_serie", notice: 'No se ha podido agregar la Serie.'
      end
  end

  def new
    @serie = Serie.new
  end
end
