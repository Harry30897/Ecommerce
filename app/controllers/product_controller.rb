class ProductController < ApplicationController
	before_action :authenticate_user!
	  

	def sell_product
	  current_user.products.category.create(title: params[:title], description: params[:description], category: params[:category], colour: params[:colour], price: params[:price])
	  return redirect_to '/temp'
	end

	def buy_product
	end

	def view_product
	end
end
