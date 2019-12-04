class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @user = User.new
    @post = Post.new
  end

  def show
    @user = User
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
