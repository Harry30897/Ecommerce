class ProductController < ApplicationController
	before_action :authenticate_seller! , only: [:sell_product]
	before_action :authenticate_user! , except: [:sell_product]
	  

	def sell_product
		category = params[:category]
		puts category
		category_id = Category.find_by_category(category)
		puts category_id
		current_seller.products.create(title: params[:title], description: params[:description], category: category_id, color: params[:color], price: params[:price])
		return redirect_to '/'
	end

	def order_product 
		product_id = params[:product_id].to_i
		quantity = params[:quantity]
		order = current_user.orders.create(product_id: product_id)
		product_order = order.product_orders.create(product_id: product_id, quantity: quantity)
		if order && product_order
			return redirect_to '/'
		else
			return redirect_to :back
		end	
	end
end
