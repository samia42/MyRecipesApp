class ChnageIngredientIdInRecipeIngredient < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipe_ingredients, :ingridient_id, :ingredient_id
  end
end
