class Product < ActiveRecord::Base
	belongs_to :seller
	belongs_to :category
	has_many :product_orders, class_name: 'ProductOrder', foreign_key: 'product_id'
end
