class Pharmacy < ApplicationRecord
    has_secure_password

    has_many :pharmacy_orders

    
end
