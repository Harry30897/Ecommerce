class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def after_sign_in_path_for(resource)
  	if resource.User ?
  		return  redirect_to 'general#home'
  	else 
  		return redirect_to 'sellerb#viewprofiles'
  	end
  end

  def after_sign_up_path_for(resource)
  	if resource.User ?
  		return redirect_to 'general#home'
  	else 
  		return redirect_to 'sellerb#viewprofiles'
  	end
  end

  def after_sign_out_path_for(resource)
  	return redirect_to 'general#home'

  end		

end
