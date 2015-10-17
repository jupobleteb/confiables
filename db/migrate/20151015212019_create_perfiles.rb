class CreatePerfiles < ActiveRecord::Migration
  def change
    create_table :perfiles , id:false  do |t|
      t.primary_key :perfil_id 
      t.string :nombre , :null => false
      t.text :descripcion
      t.references :usuario, index: true, :null => false
      t.references :permisos, index: true, :null => false

      t.timestamps
    end
  end
end
