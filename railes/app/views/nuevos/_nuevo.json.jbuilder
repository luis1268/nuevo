json.extract! nuevo, :id, :name, :apellido, :edad, :email, :created_at, :updated_at
json.url nuevo_url(nuevo, format: :json)
