class Product < ActiveRecord::Base
	belongs_to :category
	
	has_attached_file :images, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  	validates_attachment_presence :images
  	validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/

	validates :name, :description, :price, :quantity, :sku, presence: true
	validates :name, length: {minimum: 2, maximum: 30}
	validates :description, length: {minimum: 5, maximum: 300}
	validates :price, :quantity, numericality: true
end
