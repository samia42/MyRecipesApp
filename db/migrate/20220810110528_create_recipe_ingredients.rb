class CreateRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingridient_id
      t.timestamps
    end
  end
end
