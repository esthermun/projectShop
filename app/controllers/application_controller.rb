class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # if current_user.admin?
  # 	redirect_to admin page
  # end
  #if the page doesnt have current_user set then use this.
	# if current_user.try(:admin?)
	# 	flash[:alert] = "Access denied"
	# 	redirect_to root_path
	# end
end
