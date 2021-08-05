json.extract! perro, :id, :name, :apellido, :edad, :email, :created_at, :updated_at
json.url perro_url(perro, format: :json)
