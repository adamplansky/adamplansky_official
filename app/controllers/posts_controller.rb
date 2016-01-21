class PostsController < ApplicationController
  def index
    @posts = Post.order("published_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.published_at = Time.now
    @post.save
    redirect_to @post
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
