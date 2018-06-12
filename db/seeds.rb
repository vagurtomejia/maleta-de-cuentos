# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tipo.create(nombre: "polisémico")
Tipo.create(nombre: "emosémico")
Tipo.create(nombre: "monosémico")

Subtipo.create(nombre: "maravilloso", tipo_id: Tipo.find_by(nombre: "polisémico").id)
Subtipo.create(nombre: "fábula", tipo_id: Tipo.find_by(nombre: "polisémico").id)
Subtipo.create(nombre: "costumbres", tipo_id: Tipo.find_by(nombre: "polisémico").id)
Subtipo.create(nombre: "retailas y otros decires", tipo_id: Tipo.find_by(nombre: "polisémico").id)
Subtipo.create(nombre: "protosimbólico", tipo_id: Tipo.find_by(nombre: "polisémico").id)


Cuento.create(titulo: "Buenas Noticias Malas Noticias", autor: "Jeff Mack", nacionalidad: "USA", region: "California", editorial: "Ediciones B", isbn: "9788493961480", personaje: "conejo, ratón", tema: "optimismo", version: "", archivo: "main-map-11-300dpi.pdf", tipo_id: Tipo.find_by(nombre: "polisémico").id)

Cuento.create(titulo: "La princesa Martina y el chip de los idiomas", autor: "Rosalía Arteaga", nacionalidad: "Ecuador", region: "Pichincha", editorial: "Diego Pun Ediciones", isbn: "9788494265952", personaje: "princesa, rey, reina, ministros", tema: "feminismo, política", version: "", archivo: "main-map-11-300dpi.pdf", tipo_id: Tipo.find_by(nombre: "polisémico").id)





