# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# SE TRAEN REGISTROS DE GEM 'FAKER'
require 'faker'

# SE PIDEN CANTIDAD DE REGISTROS CON N°.TIMES DO |1|...END
#10.times do |i|
#   User.create(nombre: Faker::Name.name, email:Faker::Internet.email)
#end
10.times do |i|
    Movie.create(name: Faker::Movie.title, synopsis: Faker::Lorem.paragraph, director: Faker::Book.author)
    Serie.create(name: Faker::Movie.title, synopsis: Faker::Lorem.paragraph, director: Faker::Book.author)
    DocumentaryFilm.create(name: Faker::Movie.title, synopsis: Faker::Lorem.paragraph, director: Faker::Book.author)
end


# rails db:seed -> Para ejecutar la creación de datos
# Para generar los datos seeds correr el comando "rails db:drop db:create db:migrate db:seed"