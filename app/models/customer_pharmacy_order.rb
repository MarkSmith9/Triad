class CustomerPharmacyOrder < ApplicationRecord
  belongs_to :customer
  belongs_to :pharmacy
end
