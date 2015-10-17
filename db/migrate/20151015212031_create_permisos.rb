class CreatePermisos < ActiveRecord::Migration
  def change
    create_table :permisos , id:false  do |t|
      t.primary_key :permisos_id
      t.string :tipo, :null => false
      t.text :descripcion
      t.references :perfil, index: true

      t.timestamps
    end
  end
end
