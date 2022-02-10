json.extract! pharmacy, :id, :name, :password_digest, :deliver_address, :postcode, :stock, :email, :created_at, :updated_at
json.url pharmacy_url(pharmacy, format: :json)
