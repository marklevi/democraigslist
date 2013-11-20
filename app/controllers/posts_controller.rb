class PostsController < ApplicationController
  def new
    @post = Post.new
    @category = Category.find(params[:category_id])
  end
  def create
    # Catergory.find(params[:category_id]).posts << Post.create(params[:post])
    @category = Category.find(params[:category_id])
    @post = Post.create(params[:post])
    @category.posts << @post
    # category_post_path(@category, @post)
    puts "*"*80
    puts @category
    puts @post
    puts params
    redirect_to category_post_path(@post, @category)
    # redirect_to "categories/#{@category.id}/posts/#{@post.id}"
    # redirect_to @category
  end
  def show

  end


end
