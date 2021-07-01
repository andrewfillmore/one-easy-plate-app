class RecipesController < ApplicationController
  
  
  def index
    query = params[:query].gsub(" ", "%")
    recipes = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{query}&number=5&apiKey=#{Rails.application.credentials.spoonacular_api_key}&visualizeRecipe")
    # https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,flour,sugar&number=1&apiKey=307f252bf4564adbbe2109e1ead5a39e&visualizeRecipe
    
    puts query
    render json: recipes.parse(:json)
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

end
