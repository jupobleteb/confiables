class CreateExperiencias < ActiveRecord::Migration
  def change
    create_table :experiencias , id:false  do |t|
      t.primary_key :experiencia_id
      t.datetime :fechaInicio, :null => false
      t.datetime :fechaFin, :null => false
      t.string :rubro, :null => false
      t.string :cargo, :null => false
      t.text :descripcion
      t.references :laboral, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
