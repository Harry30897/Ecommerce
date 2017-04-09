class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :product_orders, class_name: 'ProductOrder', foreign_key: 'order_id'
end
