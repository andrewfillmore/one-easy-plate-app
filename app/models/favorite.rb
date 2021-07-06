class Favorite < ApplicationRecord
  belongs_to :user
  def recipe
    response = HTTP.get("https://api.spoonacular.com/recipes/#{Rails.application.credentials.spoonacular_api_key}/information?includeNutrition=false")

    recipe = response.parse(:json)
    return recipe
  end
end
