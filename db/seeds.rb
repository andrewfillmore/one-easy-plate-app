
User.create!([
  {first_name: "Mimi", email: "mimir@gmail.com", password: "password", last_name: "Reeder"},
  {first_name: "Winston", email: "winston@gmail.com", password: "password", last_name: "Strahan"},
  {first_name: "Amy", email: "amy@gmail.com", password: "password", last_name: "Reeder"},
  {first_name: "Todd", email: "todd@gmail.com", password: "password", last_name: "Reeder"},
  {first_name: "jeff", email: "jeff@gmail.com", password: "password", last_name: "fillmore"},
  {first_name: "erik", email: "erik@gmail.com", password: "password", last_name: "dodd"},
  {first_name: "jtodd", email: "jtodd@gmail.com", password: "password", last_name: "reeder"},
  {first_name: "Peter", email: "peter@gmail.com", password: "password", last_name: "Sloan"},
  {first_name: "andrew", email: "andrew@gmail.com", password: "password", last_name: "fillmore"}
])

Favorite.create!([
  # {spoonacular_api_recipe_id: "1202", user_id: 2, comments: "Cook at 350 instead of 375 for the same time"},
  # {spoonacular_api_recipe_id: "3350", user_id: 1, comments: "I would cook this again! I might add some citrus to make it a little brighter"},
  # {spoonacular_api_recipe_id: "2298", user_id: 3, comments: "Use butter instead of oil, and sear at higher temperature"},
  # {spoonacular_api_recipe_id: "4922", user_id: 5, comments: "I did this with rice instead of potatoes and really enjoyed it."},
  # {spoonacular_api_recipe_id: "716429", user_id: 1, comments: "this was a great recipe"},
  # {spoonacular_api_recipe_id: "716429", user_id: 1, comments: "this was a great recipe"},
  # {spoonacular_api_recipe_id: "654361", user_id: 7, comments: "great recipe, serves 4"},
  # {spoonacular_api_recipe_id: "652722", user_id: 7, comments: ""},
  # {spoonacular_api_recipe_id: "648279", user_id: 7, comments: ""},
  # {spoonacular_api_recipe_id: "638289", user_id: 7, comments: ""},
  # {spoonacular_api_recipe_id: "642583", user_id: 10, comments: ""},
  # {spoonacular_api_recipe_id: "664394", user_id: 7, comments: "This was incredible, though I would toast the sesame seeds a little before adding."},
  # {spoonacular_api_recipe_id: "664786", user_id: 7, comments: "I would use fresh mushrooms next time."},
  # {spoonacular_api_recipe_id: "658384", user_id: 7, comments: "loved this recipe, but I would use double the amount of peas"},
  # {spoonacular_api_recipe_id: "661109", user_id: 7, comments: "Really spicy, but delicious.\n"},
  # {spoonacular_api_recipe_id: "641975", user_id: 7, comments: "Great recipe. make double next time."},
  {spoonacular_api_recipe_id: "641975", user_id: 9, comments: "Fantastic Recipe!"},
  {spoonacular_api_recipe_id: "664206", user_id: 9, comments: "I would double this recipe next time.\n"},
  {spoonacular_api_recipe_id: "648718", user_id: 9, comments: "I would use more onion and add garlic."},
  {spoonacular_api_recipe_id: "649271", user_id: 9, comments: "Very good, but only enough for one.\n"},
  {spoonacular_api_recipe_id: "640619", user_id: 9, comments: "Great recipe. Maybe add some lemon at end.\n"},
  {spoonacular_api_recipe_id: "664394", user_id: 9, comments: "Delicious"},
  {spoonacular_api_recipe_id: "636461", user_id: 9, comments: "Very tasty."}
])
