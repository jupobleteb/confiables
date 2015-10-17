class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos , id:false  do |t|
      t.primary_key :telefono_id
      t.integer :codpais , :null => false
      t.integer :codciudad, :null => false
      t.integer :numero, :null => false

      t.timestamps
    end
  end
end
