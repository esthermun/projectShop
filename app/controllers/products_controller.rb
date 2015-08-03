class ProductsController < ApplicationController
  	before_action :set_product, only: [:show, :edit, :update, :destroy]
  	before_action :set_categories, only: [:new, :edit]
	
	def index
		@products = Product.order('created_at desc')
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "Product was successfully created."
			redirect_to @product
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			flash[:notice] = "Product was successfully updated."
			redirect_to @product
		else
			render "edit"
		end
	end

	def destroy
		@product.destroy
		redirect_to 'index'
	end

	private
	def set_categories
		@categories = Category.order(:name)
	end

	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :description, :sku, :price, :quantity, :category_id)
	end
end
