class ItemController < ApplicationController
  def create
  	@item = items.create(item_params)
  end

  private
  	def item_params
  		params.require(:item).permit(:nombreProducto, :cantidad)
	end
end
