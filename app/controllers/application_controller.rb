class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_current_user!
    authenticate__user!
    if current_user.admin != true
      flash[:alert] = "Access denied!"
      redirect_to root_path
    else 
      redirect_to admin_root_path
    end
  end

  # def after_sign_in_path_for(resource)
  #   if current_user.admin?
  #     flash[:alert] = "Access denied!"
  # 	  root_path
  #   else
  #      redirect_to admin_root_path
  #   end
  # end

  #if the page doesnt have current_user set then use this.
	# if current_user.try(:admin?)
	# 	flash[:alert] = "Access denied"
	# 	redirect_to root_path
	# end
end
