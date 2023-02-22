# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
ko_ishi = {name: "Ko-Ishi", address: "25 rue Sainte, 13001 Marseille", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese"}
ciel = {name: "Ciel", address: "21 rue Haxo, 13001 Marseille", category: "belgian"}
intercontinental = {name: "Intercontinental", address: "1 place Daviel, 13002 Marseille", category: "french"}
le_cercle_rouge = {name: "Le cercle Rouge", address: "41 rue Adolphe Thiers, 13001 Marseille", category: "italian"}

[ko_ishi, pizza_east, ciel, intercontinental, le_cercle_rouge].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
