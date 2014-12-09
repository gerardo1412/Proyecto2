class RecuentosController < ApplicationController

	def index
		@items = Item.all
	end

end
