class Favorite < ApplicationRecord
  belongs_to :user
  def recipe
    response = HTTP.get("https://api.spoonacular.com/recipes/#{spoonacular_api_recipe_id}/information?apiKey=#{Rails.application.credentials.spoonacular_api_key}&visualizeRecipe")

    recipe = response.parse(:json)
    return recipe
  end
end
