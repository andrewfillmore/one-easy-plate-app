# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!([
  {first_name: "Andrew", last_name: "Fillmore", email: "andrewf@gmail.com", password_digest: "password"},
  {first_name: "Mimi", last_name: "Reeder", email: "mimir@gmail.com", password_digest: "password"},
  {first_name: "Winston", last_name: "Strahan", email: "winston@gmail.com", password_digest: "password"},
  {first_name: "Amy", last_name: "Reeder", email: "amy@gmail.com", password_digest: "password"},
  {first_name: "Todd", last_name: "Reeder", email: "todd@gmail.com", password_digest: "password"},
])


Favorite.create!([
  {spoonacular_api_recipe_id: "1101", user_id: 1, comments: "really loved this recipe, but I would cook for about 10 minutes less"},
  {spoonacular_api_recipe_id: "1202", user_id: 2, comments: "Cook at 350 instead of 375 for the same time"},
  {spoonacular_api_recipe_id: "3350", user_id: 1, comments: "I would cook this again! I might add some citrus to make it a little brighter"},
  {spoonacular_api_recipe_id: "2298", user_id: 3, comments: "Use butter instead of oil, and sear at higher temperature"},
  {spoonacular_api_recipe_id: "4922", user_id: 5, comments: "I did this with rice instead of potatoes and really enjoyed it."}
])


