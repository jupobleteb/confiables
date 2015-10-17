class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios, id:false  do |t|
      t.primary_key :usuario_id
      t.string :correo, :null => false
      t.string :nombreUsuario, :null => false
      t.string :claveUsuario, :null => false
      t.string :nombre, :null => false
      t.string :apellido, :null => false
      t.string :genero
      t.datetime :fechaNacimiento
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :youtube
      t.references :telefono, index: true
      t.references :direccion, index: true

      t.timestamps
    end
  end
end
