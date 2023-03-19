# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeeeding.."
restaurant = Restaurant.create(name:"UKO",address:"102020-Naiorbi")
pizza = Pizza.create(name:"Hawiw",ingredients:"A lil bread")  
restaurant_pizzas1 = RestaurantPizza.create(price:5, restaurant_id:1, pizza_id:1)
puts "Done seeding!"
