json.extract! user, :id, :name, :lastname, :phone, :address, :email, :fecha_nac, :created_at, :updated_at
json.url user_url(user, format: :json)
