class HomeController < ApplicationController
  # before_action :authenticate_current_user!

  def index
  	redirect_to products_path
  end
end
