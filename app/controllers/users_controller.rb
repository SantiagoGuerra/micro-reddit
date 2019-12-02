class UsersController < ApplicationController
  def index
    @user = User.all

  end

  def show
    
  end

  def create
    @user = User.new(user_params)
 
    @user.save
    redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :username)
  end
end
