# phase-4-week-1-code-challenge
This is an an API for tracking pizzas restaurants.
## Application behaviour(BDD)
The api should have the following routes:
1. GET /restaurants
  -Returns all the restaurants in the database in json format
2. GET /restaurants/:id
-Returns a specific restaurant with that id
-This method should fail with the json:
{
  "error": "Restaurant not found"
} and a 404 status
3. DELETE /restaurants/:id
-Removes the restaurant with that id from the database as well as its associated pizzas
-This method should fail with the json:
{
  "error": "Restaurant not found"
} and a 404 status

4. GET /pizzas
  -Returns all the pizzas in the database in json format

5. POST /restaurant_pizzas
-It should create a new restaurant_pizza after accepting a json in this format:
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
} 
-On success, it should return a response with the pizza eg. 
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
-The method should fail with the following json: 
{
  "errors": ["validation errors"]
}

## Pseudo Code

**NOTE**: The boilerplate code for the models, controllers and migrations are created using the rails generate resource command.
<br>

1. Create three tables:
 - restaurants with id,name and address columns
 - restaurant_pizzas with id, price, restaurant_id and pizza_id columns
 - pizzas with id,name and ingredients columns

 2. Set table relationships:
 - restaurant_pizzas belongs to both restaurants 
 and pizzas
 - a restaurant has many restaurant_pizzas
 - a pizza has many restaurant pizzas

 3. Add validations to the model:
 in RestaurantPizza price must be between 1 and 30

 4. Set up routes
 - index controller method and route for restaurants
 - show controller method and route for restaurants
 - destroy controller method and delete route  for restaurants
 - index controller method and route for pizzas
 - create route for restaurant_pizzas which creates a table entry with association to an existing pizza and restaurant 
 * this method has to check whether or not that pizza and restaurant exist.
 
 5. Set up bad/failed request handling:
 - for restaurants show and delete methods, they should fail with a 404 status and return the following json:
 {
  "error": "Restaurant not found"
}

- for restaurant_pizzas create method, it should fail with a 422 code(unprocessable_entity) and return the json:
{
  "errors": ["validation errors"]
}

## Application usage
### Dependancies
For the appication to work  the following must be installed on your local machine:
- ruby 
- bundler 
- ruby on rails
### Usage
After ensuring that the dependancies are installed and working,follow these steps to get the appliction up and running:
- fork and clone this repository into your local machine
- open a terminal session in the directory where the app is contained and run the command: **bundle install** 
- after the gems are installs run the command **rails server**
- follow the generated link to access the application
- the application can also  be accessed in a console from the terminal by running **rails console**

## Development and Status

This application was developed using the following technologies:
-  [Ruby](https://www.ruby-lang.org/en/)
-  [Ruby on Rails](https://rubyonrails.org/)

Status: Maintained

## Author and Licence

Author:[chris-wamae](https://github.com/chris-wamae)

Licence: MIT Licence


  
