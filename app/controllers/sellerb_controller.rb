class SellerbController < ApplicationController
	before_action :authenticate_seller!

	def viewprofiles
		# @email = current_user.email
	end


end
