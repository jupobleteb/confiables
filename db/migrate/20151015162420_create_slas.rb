class CreateSlas < ActiveRecord::Migration
  def change
    create_table :slas , id:false  do |t|
      t.primary_key :sla_id
      t.string :nombre
      t.text :descripcion
      t.integer :porcentajeImportacia
      t.string :activo

      t.timestamps
    end
  end
end
