class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to @blog
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def index
    @blogs = Blog.all
  end

  private

    def blog_params
      params.require(:blog).permit(:title, :body, :image)
    end

end
