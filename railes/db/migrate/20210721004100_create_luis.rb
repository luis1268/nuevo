class CreateLuis < ActiveRecord::Migration[6.1]
  def change
    create_table :luis do |t|
      t.string :name
      t.string :apellido
      t.integer :edad
      t.string :email
      t.string :contrasena

      t.timestamps
    end
  end
end
