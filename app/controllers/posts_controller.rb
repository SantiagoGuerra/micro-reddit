class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to posts_url
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
