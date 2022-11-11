json.extract! my_account, :id, :first_name, :last_name, :email, :phone, :address, :created_at, :updated_at
json.url my_account_url(my_account, format: :json)
