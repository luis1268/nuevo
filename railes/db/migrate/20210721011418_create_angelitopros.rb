class CreateAngelitopros < ActiveRecord::Migration[6.1]
  def change
    create_table :angelitopros do |t|
      t.string :name
      t.string :apellido
      t.integer :edad
      t.string :email

      t.timestamps
    end
  end
end
