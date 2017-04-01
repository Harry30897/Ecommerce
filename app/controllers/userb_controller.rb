class UserbController < ApplicationController
	before_action :authenticate_user!

	def viewprofile
		# @email = current_user.email
	end
end
