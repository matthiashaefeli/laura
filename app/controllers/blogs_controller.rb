class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

  def create
    @blog = Blog.new(blog_params)
    if @blog.valid?
      @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to blogs_path
  end

  def destroy
    blog = Blog.find(params[:id])
    # blog.image.purge
    blog.destroy
    redirect_to blogs_path
  end

	private

	def blog_params
		params.require(:blog).permit(:title, :description, :location)
	end
end
