json.extract! person, :id, :name, :department, :phone, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
