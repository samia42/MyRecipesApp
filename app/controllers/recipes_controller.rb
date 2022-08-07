class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end
    def new
      @recipe= Recipe.new
    end
    def create 
        @recipe = Recipe.new(recipe_param)
        @recipe.chef = Chef.first
        if @recipe.save
            respond_to do |format|
            format.html { redirect_to @recipe, success: 'Todo was successfully created.' }
            end
        else
            render :new , status: :unprocessable_entity
        end
          
          
    end

    def edit 
        @recipe= Recipe.find(params[:id])
    end
    def update 
        @recipe= Recipe.find(params[:id])
        if @recipe.update(recipe_param)
            respond_to do |format|
            format.html { redirect_to @recipe, success: 'Todo was successfully created.' }
            end
        else
            render :edit , status: :unprocessable_entity
        end
    end

    def destroy
        @recipe= Recipe.find(params[:id])
        @recipe.destroy
        @recipes = Recipe.all
        respond_to do |format|
            format.html { redirect_to  recipes_path,  status: :see_other, notice: 'Todo was deleted successfully ' }
        end

    end
    def show 
        @recipe = Recipe.find(params[:id])
    end
     
    private
    def recipe_param
        params.require(:recipe).permit(:name,:description)
    end
end
