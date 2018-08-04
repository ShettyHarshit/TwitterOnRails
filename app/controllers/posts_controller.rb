class PostsController < ApplicationController
    before_action :authenticate_user!
  def index
    @user = current_user.id
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to '/posts#index'
    else
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:body)
    end
end
