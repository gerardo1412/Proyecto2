class ItemsController < ApplicationController
  	


	def destroy
	  @item = Item.find(params[:id])
	  @item.destroy
	 
	  redirect_to items_path
	end

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
	  usados = item_params[:usados].to_i - item_params[:cantidad].to_i  + @item.usados.to_i
	  if @item.update(item_params)
	  	@item.update(usados: usados)
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
