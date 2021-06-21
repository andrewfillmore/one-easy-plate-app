class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :spoonacular_api_recipe_id
      t.integer :user_id
      t.text :comments

      t.timestamps
    end
  end
end
