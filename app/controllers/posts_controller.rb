class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show

  end

  def create
    @post = User.new(post_params)

    @post.save
    redirect_to posts_url
  end

  private
  def posts_params
    params.require(:posts).permit(:title, :content)
  end
end
