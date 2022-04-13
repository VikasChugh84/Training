json.extract! user, :id, :name, :phone_number, :address, :city, :state, :pincode, :date_of_birth, :created_at, :updated_at
json.url user_url(user, format: :json)
