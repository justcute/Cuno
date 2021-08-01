class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.text :description
      t.date :date
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
