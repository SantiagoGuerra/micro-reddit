# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @user = User.all
    @posts = Post.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username)
  end
end
