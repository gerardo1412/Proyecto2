class PostsController < ApplicationController
	

	 def create
    @item = Item.find(params[:item_id])
    @comment = @item.posts.create(post_params)
    redirect_to item_path(@item)
  end
 
  private
    def post_params
      params.require(:post).permit(:autor, :text)
    end
end


