class CreateUbicaciones < ActiveRecord::Migration
  def change
    create_table :ubicaciones , id:false  do |t|
      t.primary_key :ubicacion_id
      t.string :longitud, :null => false
      t.string :latitud, :null => false
      t.datetime :fecha, :null => false
      t.references :usuario, index: true, :null => false

      t.timestamps
    end
  end
end
