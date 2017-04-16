class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  autocomplete :products, :title

  def after_sign_in_path_for(resource)
  	if resource.class == User 
      '/'
    elsif resource.class == Seller
      '/sellerb/vp'
  	end
  end

  def after_sign_up_path_for(resource)
  	if resource.class == User 
  		'/'
  	elsif resource.class == Seller 
  		'/sellerb/vp'
  	end
  end

  def after_sign_out_path_for(resource)
    '/'
  end		

end
