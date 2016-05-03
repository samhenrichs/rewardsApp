class BlogsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end

  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  def index
    @blogs = Blog.all.order(created_at: :desc)
  end

  private

    def find_post
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body, :image)
    end

end
