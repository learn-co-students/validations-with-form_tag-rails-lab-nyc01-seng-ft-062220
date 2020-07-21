class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]

  def show

  end

  def new
    @post = post.new
  end

  def edit

  end

  def create
    @post = post.create(post_params)

    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end

  end

  def update

    if @post.update(post_params)
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end

  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
