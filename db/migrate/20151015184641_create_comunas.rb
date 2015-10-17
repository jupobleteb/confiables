class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas, id:false  do |t|
      t.primary_key :comuna_id
      t.string :nombre, :null => false
      t.string :region, :null => false
      t.string :pais, :null => false

      t.timestamps
    end
  end
end
