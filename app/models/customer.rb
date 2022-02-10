class Customer < ApplicationRecord
    has_secure_password

    has_many :customer_orders
end
