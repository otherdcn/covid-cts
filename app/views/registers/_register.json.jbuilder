json.extract! register, :id, :name, :number, :purpose, :loc_org, :temp, :created_at, :updated_at
json.url register_url(register, format: :json)
