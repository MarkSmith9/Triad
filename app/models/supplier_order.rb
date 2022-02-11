class SupplierOrder < ApplicationRecord
  belongs_to :supplier

  
  attribute :status, default: 0


end
