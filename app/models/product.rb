class Product < ActiveRecord::Base
	belongs_to :category

	has_attached_file :image, :styles => { :medium => "400x400#", :small => "250x250#", :thumb => "100x100#" }
  	validates_attachment_presence :image
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	
	validates :name, :description, :price, :quantity, :sku, presence: true
	validates :name, length: {minimum: 2, maximum: 30}
	validates :description, length: {minimum: 5, maximum: 300}
	validates :price, :quantity, numericality: true
end
