json.extract! contact, :id, :name, :description, :fecha, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
