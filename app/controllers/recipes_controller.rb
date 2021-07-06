class RecipesController < ApplicationController
  
  
  def index
    query = params[:query].gsub(" ", "%")
    recipes = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{query}&number=6&apiKey=#{Rails.application.credentials.spoonacular_api_key}&visualizeRecipe")
    
    # https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,flour,sugar&number=1&apiKey=307f252bf4564adbbe2109e1ead5a39e&visualizeRecipe
    
    puts query
    render json: recipes.parse(:json)
  end



  def show
    
    # https://api.spoonacular.com/recipes/633568/information?apiKey=307f252bf4564adbbe2109e1ead5a39e&includeNutrition=true.
    
    id = params[:id]
    recipe = HTTP.get("https://api.spoonacular.com/recipes/#{id}/information?apiKey=#{Rails.application.credentials.spoonacular_api_key}&visualizeRecipe")

    render json: recipe.parse(:json)
    
  end

end
# &apiKey=#{Rails.application.credentials.spoonacular_api_key}&visualizeRecipe