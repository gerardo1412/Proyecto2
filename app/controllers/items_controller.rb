class ItemsController < ApplicationController
  	


  	def new
		 @item = Item.new
	end

	def index
		@items = Item.all
	end

	def edit
  		@item = Item.find(params[:id])
	end

	def show
		@item = Item.find(params[:id])
	end

	def update
	  @item = Item.find(params[:id])
	 
	  if @item.update(item_params)
	    redirect_to @item
	  else
	    render 'edit'
	  end
	end

	def create
	

		item = Item.new(item_params)
		item.save

	
		redirect_to item

	end

	private
	def item_params
		params.require(:item).permit(:nombre,:descripcion,:foto,:cantidad, :usados )
	end

end
