class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    #binding.pry
    @post = current_user.posts.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
