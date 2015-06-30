# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Creating places..."

Place.delete_all

Place.create name: "UCT", about: "institution" , location: "Rondebosch" ,rating: 5
Place.create name: "iXperience", about: "campus" , location: "19 park road", rating: 5
Place.create name: "Once", about: "Hostel" , location: "73 Kloof Street" ,rating: 4