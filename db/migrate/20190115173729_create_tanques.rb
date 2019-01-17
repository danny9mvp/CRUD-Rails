class CreateTanques < ActiveRecord::Migration[5.2]
  def change
    create_table :tanques do |t|
      t.string :nombre
      t.text :caracteristicas

      t.timestamps
    end
  end
end
