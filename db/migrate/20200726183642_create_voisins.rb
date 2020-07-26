class CreateVoisins < ActiveRecord::Migration[6.0]
  def change
    create_table :voisins do |t|
      t.string :name
      t.integer :number
      t.string :address
      t.text :aboutme

      t.timestamps
    end
  end
end
