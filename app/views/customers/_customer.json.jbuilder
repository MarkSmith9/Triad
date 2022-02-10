json.extract! customer, :id, :password_digest, :firstname, :lastname, :nhs_number, :postcode, :email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
