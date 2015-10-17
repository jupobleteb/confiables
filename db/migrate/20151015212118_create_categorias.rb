class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias , id:false  do |t|
      t.primary_key :categoria_id
      t.string :nombre, :null => false
      t.text :descripcion
      t.references :laboral, index: true

      t.timestamps
    end
  end
end
