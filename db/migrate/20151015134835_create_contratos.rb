class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos  , id:false  do |t|
      t.primary_key :contrato_id
      t.integer :prestador, :null => false
      t.string :nombre, :null => false
      t.text :descripcion
      t.datetime :fechaInicio
      t.datetime :fechaFin
      t.text :clausulaTermino
      t.integer :evalucion
      t.integer :valorservicio
      t.integer :comision
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
