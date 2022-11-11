json.extract! budget, :id, :name, :expiration_date, :total, :created_at, :updated_at
json.url budget_url(budget, format: :json)
