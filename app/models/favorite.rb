class Favorite < ApplicationRecord
  belongs_to :user
  def recipe
    response = HTTP.get("https://api.spoonacular.com/recipes/#{Rails.application.credentials.spoonacular_api_key}/information?includeNutrition=false")

    recipe_one = response.parse(:json)
    return recipe_one
  end
end
