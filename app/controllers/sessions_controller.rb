class SessionsController < ApplicationController

  def new
  
  end

  def create
  
    chef = Chef.find_by(email:params[:session][:email])
    if chef && chef.authenticate(params[:session][:password])
      session[:chef_id] = chef.id
      redirect_to chef
    else
      respond_to do |format|
       format.html { redirect_to action: "new", danger: 'not loged in' }
      end
    end

  end

  def destroy
    session[:chef_id] = nil
    redirect_to root_path
  end
end
