class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios , id:false  do |t|
      t.primary_key :socio_id
      t.string :cargo, :null => false
      t.text :descripcion
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
