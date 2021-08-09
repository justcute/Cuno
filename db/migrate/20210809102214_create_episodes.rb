class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.belongs_to :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
