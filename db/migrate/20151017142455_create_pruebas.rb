class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.binary :datobinary
      t.boolean :datobollean
      t.date :datodate
      t.decimal :datodecimal
      t.float :datofloat
      t.integer :datointeger
      t.timestamp :datotimestamp
      t.text :datotext
      t.string :datostring
      t.datetime :datofecha

      t.timestamps
    end
  end
end
