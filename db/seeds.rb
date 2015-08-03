# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Category.delete_all

Product.create(name: "Product 1", description: "First product description", sku: "prd-0001", price: '35.75', quantity: '15', category_id: '2')
Product.create(name: "Product 2", description: "Second product description", sku: "prd-0002", price: '85.55', quantity: '22', category_id: '3')
Product.create(name: "Product 3", description: "Third product description", sku: "prd-0003", price: '150.99', quantity: '5', category_id: '3')
Product.create(name: "Product 4", description: "Fourth product description", sku: "prd-0004", price: '22.75', quantity: '53', category_id: '2')

Category.create(name: "First Cat", description: "A great first category")
Category.create(name: "Second Cat", description: "A great second category")
