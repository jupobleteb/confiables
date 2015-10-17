class CreateLaborales < ActiveRecord::Migration
  def change
    create_table :laborales , id:false  do |t|
      t.primary_key :datoslaborales_id
      t.string :correo, :null => false
      t.references :telefono, index: true
      t.datetime :fechacontrato, :null => false
      t.text :descripcion, :null => false
      t.references :direccion, index: true
      t.references :usuario, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
