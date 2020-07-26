class AddFavoriToVoisin < ActiveRecord::Migration[6.0]
  def change
    add_column :voisins, :favori, :boolean
  end
end
