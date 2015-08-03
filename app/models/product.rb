class Product < ActiveRecord::Base
	belongs_to :category

	validates :name, :description, :price, :quantity, :sku, presence: true
	validates :name, length: {minimum: 2, maximum: 30}
	validates :description, length: {minimum: 5, maximum: 300}
	validates :price, :quantity, numericality: true
end
