class CreateCuentos < ActiveRecord::Migration
  def change
    create_table :cuentos do |t|
      t.string :titulo
      t.string :autor
      t.string :nacionalidad
      t.string :region
      t.string :tipo
      t.string :editorial
      t.string :isbn
      t.text :personaje
      t.text :tema
      t.text :version
      t.string :archivo

      t.timestamps null: false
    end
  end
end
