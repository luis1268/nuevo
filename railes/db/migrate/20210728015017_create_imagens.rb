class CreateImagens < ActiveRecord::Migration[6.1]
  def change
    create_table :imagens do |t|
      t.references :foto, polymorphic: true, null: false

      t.timestamps
    end
  end
end
