class Favorite < ApplicationRecord
  belongs_to :user
  def recipe
    response = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=1&apiKey=307f252bf4564adbbe2109e1ead5a39e&visualizeRecipe")

    recipe_one = response.parse(:json)
    return recipe_one
  end
end
