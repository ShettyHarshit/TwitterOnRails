class PostsController < ApplicationController
    before_action :authenticate_user!
  def index
    @user = current_user.id
  end
end
