class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas , id:false  do |t|
      t.primary_key :rut
      t.string :nombre, :null => false
      t.string :acronimo
      t.string :rubro, :null => false
      t.string :rutrepresentante, :null => false
      t.string :email, :null => false
      t.references :telefono, index: true
      t.references :direccion, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
