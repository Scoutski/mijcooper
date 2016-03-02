class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
  	@post = Post.new
  end

  def create
  	@post = Post.new post_params

    if @post.save
    	flash[:success] = "New post: '" + @post.title + "' was successfully created!"
      redirect_to posts_path
    else
    	flash[:error] = "There was an error creating your post."
      render :new
    end
  end

  def show
  	@post = Post.find params[:id]
  end

  def edit
  	@post = Post.find params[:id]
  end

  def update
  	@post = Post.find params[:id]
  	
  	if @post.update post_params
  		flash[:success] = "Post: '" + @post.title + "' was successfully updated!"
  		redirect_to post_path(@post)
  	else
  		flash[:error] = "There was an error updating your post."
  		render :edit
  	end
  end

  def destroy
  	@post = Post.find params[:id]
  	@post.destroy

  	flash[:success] = "Your post was successfully deleted."
  	redirect_to posts_path
  end

	private
	
	def post_params
		params.require(:post).permit(:title, :content)
	end

end
