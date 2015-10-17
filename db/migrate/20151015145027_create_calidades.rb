class CreateCalidades < ActiveRecord::Migration
  def change
    create_table :calidades , id:false  do |t|
      t.primary_key :calidad_id
      t.integer :valor 
      t.references :sla, index: true , :null => false
      t.references :contrato, index: true , :null => false

      t.timestamps
    end
  end
end
