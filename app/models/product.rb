class Product < ActiveRecord::Base
	belongs_to :seller
	belongs_to :category
	has_many :product_orders through :productorder
end
