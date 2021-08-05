class Producto < ApplicationRecord
    has_many :imagenes, as: :foto
  end