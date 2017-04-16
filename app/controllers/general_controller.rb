class GeneralController < ApplicationController
	# autocomplete :products, :title

	def view_category
		category_id = params[:general]
		puts category_id
		@products = Product.where(:category => category_id.to_i)
	end

	def view_product
		id = params[:id]
        @product = Product.find_by_id(id)
    end
		
	

end
