class PostsController < ApplicationController
  def index
    @posts = Post.all
    @latest = Post.last
  end

  def show
    @post = Post.find(params[:id])
  end
end
