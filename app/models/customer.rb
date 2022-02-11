class Customer < ApplicationRecord
    has_secure_password

    has_many :customer_orders
    has_many :customer_pharmacy_orders
end
