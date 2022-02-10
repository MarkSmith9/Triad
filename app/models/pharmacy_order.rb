class PharmacyOrder < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :supplier
end
