class SellerbController < ApplicationController
	before_action :authenticate_user!

	def viewprofiles
		# @email = current_user.email
	end


end
