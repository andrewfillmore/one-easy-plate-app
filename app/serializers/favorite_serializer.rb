class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :comments, :spoonacular_api_recipe_id, :recipe
end
