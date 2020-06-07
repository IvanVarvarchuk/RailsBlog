class PostsController < ApplicationController
  def index
    @posts = Post.all

    @categories = Category.all
  end

  def show
    @post = Post.find(params[:id])
    @account = current_account
    @categories = Category.all
  end

  def new
    @post = Post.new()

    @categories = Category.all
  end

  def create
    @categories = Category.all

    @post = Post.new(post_params)
    @post.account_id = current_account.id
    @post.save
    redirect_to @post
  end

  def edit
    @categories = Category.all

    @post = Post.find(params[:id])
  end

  def update
    @categories = Category.all

    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to :post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title,:text,:category_id,:author)
  end

end
