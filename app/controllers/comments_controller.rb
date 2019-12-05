# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @comments = Comments.all
  end

  def new
    @user = User.find(params[:id])
    @comment = @user.comments.new
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(comment_params)
    redirect_to root_path
  end

  def comment_params
    params.require(:comment).permit(:author, :content, :user_id)
  end
end
