class PostController < ApplicationController

	def new
		 @post = Post.new
	end

	def index
		@posts = Post.all
	end

	def show
		@posts = Post.find(params[:id])
	end

	def create
		item = current_item

		post = Post.new(post_params)
		Post.save
	end

	private
	def post_params
		params.require(:post).permit(:nombre)
	end

end