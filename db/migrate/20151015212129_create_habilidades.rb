class CreateHabilidades < ActiveRecord::Migration
  def change
    create_table :habilidades , id:false  do |t|
      t.primary_key :habilidad_id
      t.string :nombre, :null => false
      t.text :descripcion
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
