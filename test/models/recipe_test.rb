require "test_helper"

class RecipeTest < ActiveSupport::TestCase
    def setup
        @recipe = Recipe.new(name:"Biryani" ,description:"i love biryani")
    end
    test "Recipe should be valid" do
        assert @recipe.valid?
    end
    test "Name should be present" do 
        @recipe.name=""
        assert_not @recipe.valid?
    end
    test "descrption should be present" do 
        @recipe.description=""
        assert_not @recipe.valid?
    end
    test "description should be more than 5 characters" do 
        @recipe.description="a"*3
        assert_not @recipe.valid?
    end
    test "description should not be more than 500 characters" do 
        @recipe.description="a"*501
        assert_not @recipe.valid?
    end
end