class CreateDirecciones < ActiveRecord::Migration
  def change
    create_table :direcciones , id:false  do |t|
      t.primary_key :direccion_id
      t.string :direccion, :null => false
      t.integer :numero, :null => false
      t.string :complemento
      t.integer :codPostal
      t.references :comuna, index: true

      t.timestamps
    end
  end
end
