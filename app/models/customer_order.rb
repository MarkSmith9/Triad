class CustomerOrder < ApplicationRecord
  belongs_to :customer
  belongs_to :supplier
end
