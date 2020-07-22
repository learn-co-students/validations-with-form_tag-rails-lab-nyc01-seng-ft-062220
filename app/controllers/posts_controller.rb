class PostsController < ApplicationController
  before_action :set_find 
  
  def show
    set_find 
  end

  def edit
    set_find 
  end

  def update
    set_find 

    if @post.update(post_params)

      redirect_to post_path(@post)
    else 
      render :edit 
    end 
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_find 
    @post = Post.find(params[:id])
  end
end
