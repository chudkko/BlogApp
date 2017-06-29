class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    if @post.save    
      redirect_to @post
    else
      render action: 'new'
    end
  end

  def destroy
    @post = Post.destroy(params[:id])
    redirect_to action: "index"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
