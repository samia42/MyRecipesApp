require "test_helper"

class ChefTest < ActiveSupport::TestCase
    def setup
        @chef = Chef.new(chefname:"Biryani" ,email:"i love biryani")
    end
    test "chef should be valid" do
        assert @chef.valid?
    end
    test "Name should be present" do 
        @chef.chefname=""
        assert_not @chef.valid?
    end
    test "chefname should be less than 30 characters" do 
        @chef.chefname="a"*31
        assert_not @chef.valid?
    end
    test "email should be present" do 
        @chef.email=""
        assert_not @chef.valid?
    end
    test "email should not be more than 255 characters" do 
        @chef.email="a" * 245 + "@example.com"
        assert_not @chef.valid?
    end
end