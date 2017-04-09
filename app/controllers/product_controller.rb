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
		user_id = current_user.id
		# byebug
		# puts product_id
		# puts user_id 
		order = Order.create(product_id: product_id, user_id: user_id)
		if order
			return redirect_to '/buyproductg'
		else
			return redirect_to :back
		end	
	end

end
