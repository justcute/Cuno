class CreateGenreProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :genre_products do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
