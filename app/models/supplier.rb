class Supplier < ApplicationRecord
    has_secure_password

    has_many :supplier_orders
    has_many :pharmacy_orders

end
