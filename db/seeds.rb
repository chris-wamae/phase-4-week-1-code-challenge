# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeeeding.."
#adds restaurants
Restaurant.create(name:"UKO",address:"102020-Naiorbi")
Restaurant.create(name:"DOKI",address:"102320-Kisumu")
Restaurant.create(name:"NISE",address:"3222350-Mombasa")
Restaurant.create(name:"FALKA",address:"8752020-Diani")
Restaurant.create(name:"ZETLI",address:"948020-Nyeri")

#adds pizzas
Pizza.create(name:"Hawiw",ingredients:"A lil bread") 
Pizza.create(name:"Jeiod",ingredients:"Milk and honey") 
Pizza.create(name:"Opawiw",ingredients:"No tomatoes") 
Pizza.create(name:"Drikowiw",ingredients:"Apricots") 
Pizza.create(name:"Wieiie",ingredients:"Eggs and eggplant") 

#adds restaurant_pizzas
RestaurantPizza.create(price:5, restaurant_id:1, pizza_id:1)
RestaurantPizza.create(price:10, restaurant_id:2, pizza_id:2)
RestaurantPizza.create(price:21, restaurant_id:1, pizza_id:1)
RestaurantPizza.create(price:29, restaurant_id:3, pizza_id:3)
RestaurantPizza.create(price:14, restaurant_id:1, pizza_id:1)

puts "Done seeding!"
