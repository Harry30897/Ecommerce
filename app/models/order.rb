class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :product_orders through :productorder
end
