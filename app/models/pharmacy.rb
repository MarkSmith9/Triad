class Pharmacy < ApplicationRecord
    has_secure_password

    has_many :pharmacy_orders
    has_many :customer_pharmacy_orders

    
end
