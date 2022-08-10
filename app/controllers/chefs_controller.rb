class ChefsController < ApplicationController

  def index
    @chefs = Chef.all
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      respond_to do |format|
        format.html { redirect_to @chef, success: 'Profile was successfully created.' }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def update
    @chef = Chef.find(params[:id])
    if @chef.update(chef_params)
      respond_to do |format|
        format.html { redirect_to @chef, success: 'Account updated succesfully.' }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

#   def destroy
#     @chef = Chef.find(params[:id])
#     @chef.destroy
#     @chefs = Chef.all
#     respond_to do |format|
#       format.html { redirect_to  Chefs_path,  status: :see_other, notice: 'Todo was deleted successfully ' }
#     end
#   end

  def show
    @chef = Chef.find(params[:id])
  end

  private

  def chef_params
    params.require(:chef).permit(:chefname, :email, :password, :password_confirmation)
  end
end
