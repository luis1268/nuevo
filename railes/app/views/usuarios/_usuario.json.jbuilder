json.extract! usuario, :id, :nombre, :apellido, :edad, :email, :contrasena, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
