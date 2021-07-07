class FavoritesController < ApplicationController
  before_action :authenticate_user
  
  def index
    favorites = current_user.favorites
    render json: favorites
  end

  def create
    if current_user
      favorite = Favorite.new(
        user_id: current_user.id,
        spoonacular_api_recipe_id: params[:spoonacular_api_recipe_id],
        comments: params[:comments]
      )
      if favorite.save
        render json: { message: "Recipe created successfully" }, status: :created
      else
        render json: { errors: favorite.errors.full_messages }, status: :bad_request
      end
    else
      render json: { errors: "You are not authorized to update this user"}, status: :unauthorized
    end
  end

  def update
    favorite = Favorite.find(params[:id])
    if current_user == favorite.user
      favorite.comments = params[:comments] || favorite.comments
    
      if favorite.save
        render json: favorite
      else 
        render json: {errors: favorite.errors.full_messages}, status: :unprocessable_entity
      end
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    if current_user.id == favorite.user_id
      favorite.destroy
      render json: {message: "Recipe deleted"}
    else
      render json: {}, status: :unauthorized
    end
  end
end
