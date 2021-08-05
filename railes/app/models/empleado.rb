class Empleado < ApplicationRecord
    has_many :imagenes, as: :foto
    end
