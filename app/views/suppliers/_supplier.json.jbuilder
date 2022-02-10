json.extract! supplier, :id, :password_digest, :name, :deliver_address, :postcode, :stock, :phone_number, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
