class PostsController < ApplicationController
  def initialize
    @author = Author.find(1)
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # formから投げられたデータを受け取る
    @post = Post.new(post_params)
    # これを保存する
    @post.save
    # show.html.erbに飛ばす
    redirect_to "/posts/#{@post.id}"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    # formから投げられたデータを受け取る
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)

    # show.html.erbに飛ばす
    redirect_to "/posts/#{@post.id}"
  end

  private
  def post_params
    # params.require(:key).permit(:filter)
    params.require(:post).permit(
      :title,
      :body,
      :category,
    )
  end

end
