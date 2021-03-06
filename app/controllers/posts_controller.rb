class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if user_signed_in?

    if @post.save
      redirect_to feeds_path
    else
      redirect_to new_post_path
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:description, :image, :image_cache)
  end
end
