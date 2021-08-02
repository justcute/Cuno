class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :trailer
      t.date :date
      t.integer :duration
      t.integer :sertification
      t.integer :country

      t.timestamps
    end
  end
end
